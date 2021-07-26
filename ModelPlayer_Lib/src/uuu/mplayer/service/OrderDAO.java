package uuu.mplayer.service;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.Order;
import uuu.mplayer.entity.OrderItem;
import uuu.mplayer.entity.PaymentType;
import uuu.mplayer.entity.Product;
import uuu.mplayer.entity.ShippingType;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.exception.MPRStockShortageException;


public class OrderDAO {
	
	
	private static final String INSERT_ORDER="INSERT INTO orders"
			+ "	(id, customer_id, order_date, order_time, payment_type, payment_fee,"
			+ "	shipping_type, shipping_fee, recipient_name, recipient_email,"
			+ "	recipient_phone, shipping_address, status)"
			+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,0);";
	private static final String INSERT_ORDER_ITEM="INSERT INTO order_items "
			+ "(order_id, product_id, pre_order, price, quantity)"
			+ " VALUES(?,?,?,?,?);";
	private static final String UPDEAT_PRODUCT_STOCK = "UPDATE `mplayer`.`products` "
			+ "SET `stock` = stock - ? WHERE (stock >= ? AND`id` = ?);";
	void insert(Order order) throws MPRException{
		
		
		try(
			Connection connection = RDBConnection.getConnection();		//1.2.取得連線
			PreparedStatement pstmt01 = connection.prepareStatement(UPDEAT_PRODUCT_STOCK);
				
			PreparedStatement pstmt1 = connection.prepareStatement(INSERT_ORDER, Statement.RETURN_GENERATED_KEYS);		//3.準備指令1
			PreparedStatement pstmt2 = connection.prepareStatement(INSERT_ORDER_ITEM);	//3.準備指令2
		){
			for(OrderItem item : order.getOrderItemSet()) { //一筆一筆修改庫存量
				int qty = item.getQuantity();
				Product p = item.getProduct();
				boolean preOrder = item.isPreOrder();
				PreparedStatement pt = null;
				if(!preOrder){		//不是預購才扣庫存
					pt = pstmt01;
					pt.setInt(1, qty);
					pt.setInt(2, qty);
					pt.setInt(3, p.getId());
				
					//4. 執行指令
 					int row = pt.executeUpdate();
 					if(row==0) {
 						throw new MPRStockShortageException(item);
 					}
				}
			}
			
			connection.setAutoCommit(false);//取得交易控制權
			try {
				//先新增order
				//傳入指令1的?
				pstmt1.setInt(1, order.getId());
				pstmt1.setString(2, order.getMember().getId());
				pstmt1.setString(3, order.getOrderDate().toString());
				pstmt1.setString(4, order.getOrderTime().toString());
				pstmt1.setString(5, order.getPaymentType().name());
				pstmt1.setDouble(6, order.getPaymentType().getFee());
				pstmt1.setString(7, order.getShippingType().name());
				pstmt1.setDouble(8, order.getShippingType().getFee());
				pstmt1.setString(9, order.getRecipientName());
				pstmt1.setString(10, order.getRecipientEmail());
				pstmt1.setString(11, order.getRecipientPhone());
				pstmt1.setString(12, order.getRecipientAddress());
				
				//4.執行指令1
				pstmt1.executeUpdate();
				
				try(//2.取得order自動給號的值
					ResultSet rs = pstmt1.getGeneratedKeys();	//取得自動給號的key
				){
					//5.處理rs
					while(rs.next()) {
						int orderId = rs.getInt(1);
						order.setId(orderId);
					}
					
					for(OrderItem orderItem:order.getOrderItemSet()) {
						pstmt2.setInt(1, order.getId());
						pstmt2.setInt(2, orderItem.getProduct().getId());
						pstmt2.setBoolean(3, orderItem.isPreOrder());
						pstmt2.setDouble(4, orderItem.getPrice());
						pstmt2.setInt(5, orderItem.getQuantity());
						
						
						//4.執行指令2
						pstmt2.executeUpdate();
					}
				}
				
				connection.commit();
			}catch (Exception e){
				connection.rollback();
				throw e;
			}finally {
				connection.setAutoCommit(true);
			}
				
			
			
		} catch (SQLException e) {
			throw new MPRException("建立訂單失敗", e);
		}
	}
	
	
	private static final String SELECT_ORDER_HISTORY_BY_MEMBER_ID="SELECT id, order_date, order_time, payment_type, payment_fee,"
			+ "	shipping_type, shipping_fee, shipping_address, "
			+ " SUM(price*quantity) as total_amount,"
			+ " price, quantity, "
			+ " price*quantity as amount,"
			+ " (SUM(price*quantity)+payment_fee+shipping_fee) as total_amont_fee "
			+ " FROM mplayer.orders "
			+ "	LEFT JOIN order_items "
			+ "	ON orders.id = order_items.order_id "
			+ " WHERE customer_id=? "
			+ " GROUP BY orders.id "
			+ " ORDER BY order_date DESC, order_time DESC;";
	List<Order> selectOrderHistory(String memberId) throws MPRException{
		List<Order> list = new ArrayList<>();
		
		
		try(
			Connection connection = RDBConnection.getConnection();
			PreparedStatement pstmt = connection.prepareStatement(SELECT_ORDER_HISTORY_BY_MEMBER_ID);	
			) {
			
			//3.1傳入?的值
			pstmt.setString(1, memberId);
			
			try(
				ResultSet rs = pstmt.executeQuery();//4.執行指令
			){
				//5.
				while(rs.next()) {
					Order order = new Order();
					
					order.setId(rs.getInt("id"));
					order.setOrderDate(LocalDate.parse(rs.getString("order_date")));
					order.setOrderTime(LocalTime.parse(rs.getString("order_time")));
					//order.setStatus(rs.getInt("status"));
					
					String pType = rs.getString("payment_type");
					order.setPaymentType(PaymentType.valueOf(pType));
					order.setPaymentFee(rs.getDouble("payment_fee"));
					
					String shType = rs.getString("shipping_type");
					order.setShippingType(ShippingType.valueOf(shType));
					order.setShippingFee(rs.getDouble("shipping_fee"));
					order.setRecipientAddress(rs.getString("shipping_address"));
					
					order.setTotalAmount(rs.getDouble("total_amont_fee"));
					
					
					list.add(order);
				}
			}
		} catch (SQLException e) {
			throw new MPRException("查詢歷史訂單失敗", e);
		}
		
		return list;
	}
	
	
	
	private static final String SELECT_ORDER_BY_ID="SELECT orders.id, customer_id, order_date, order_time, status, "
			+ "	payment_type, payment_fee, payment_note, "
			+ " shipping_type, shipping_fee, shipping_note, "
			+ " recipient_name, recipient_email, recipient_phone, shipping_address,"
			+ " order_id, product_id, order_items.pre_order, price, quantity,"
			+ " products.name "
			+ " FROM mplayer.orders  "
			+ "	LEFT JOIN order_items ON orders.id = order_items.order_id "
			+ " LEFT JOIN products ON order_items.product_id = products.id "
			+ " WHERE orders.id=?;";
	Order selectOrderById(String id) throws MPRException{
		Order order = null;		
		
		try (
				Connection connection = RDBConnection.getConnection();//1,2
				PreparedStatement pstmt = connection.prepareStatement(SELECT_ORDER_BY_ID); //3.
				){
			//3.1傳入?的值
			pstmt.setString(1, id);
			try(
					ResultSet rs = pstmt.executeQuery();
				){
				//5. 處理rs
				while(rs.next()) {
					if(order==null) {
						order = new Order();
						order.setId(rs.getInt("id"));
						
						Customer c = new Customer();
						c.setId(rs.getString("customer_id"));
						order.setMember(c);
						order.setOrderDate(LocalDate.parse(rs.getString("order_date")));
						order.setOrderTime(LocalTime.parse(rs.getString("order_time")));
						order.setStatus(rs.getInt("status"));		
						
						String pType = rs.getString("payment_type");
						order.setPaymentType(PaymentType.valueOf(pType));
						order.setPaymentFee(rs.getDouble("payment_fee"));
						order.setPaymentNote(rs.getString("payment_note"));
						
						String shType = rs.getString("shipping_type");
						order.setShippingType(ShippingType.valueOf(shType));
						order.setShippingFee(rs.getDouble("shipping_fee"));
						order.setShippingNote(rs.getString("shipping_note"));
						
						order.setRecipientName(rs.getString("recipient_name"));
						order.setRecipientEmail(rs.getString("recipient_email"));
						order.setRecipientPhone(rs.getString("recipient_phone"));
						order.setRecipientAddress(rs.getString("shipping_address"));
					}	
					
					String orderId = rs.getString("order_id");
					if(orderId!=null) {					
						OrderItem orderItem = new OrderItem();
						
						Product p = new Product();
						p.setId(rs.getInt("product_id"));
						p.setName(rs.getString("name"));
						orderItem.setProduct(p);						

						orderItem.setPreOrder(rs.getBoolean("pre_order"));
						orderItem.setPrice(rs.getDouble("price"));
						orderItem.setQuantity(rs.getInt("quantity"));						
						order.add(orderItem);
					}
					
				}
			}
		} catch (SQLException e) {
			throw new MPRException("查詢訂單明細失敗", e);
		}
		
		return order;
	}
	
	private static final String UPDATE_STATUS_TO_ENTERED = "UPDATE orders SET status=2" //狀態設定為已付款
            + ", payment_note=? WHERE id=? AND customer_id=?"
            + " AND status=0" + " AND payment_type='" + PaymentType.CARD.name() + "'";
    public void updateStatusToPAID(int orderId, String customerId, String paymentNote) throws MPRException {
        try (Connection connection = RDBConnection.getConnection(); //2. 建立連線
                PreparedStatement pstmt = connection.prepareStatement(UPDATE_STATUS_TO_ENTERED) //3. 準備指令
                ) {
            //3.1 傳入?的值
            pstmt.setString(1, paymentNote);
            pstmt.setInt(2, orderId);
            pstmt.setString(3, customerId);
            //4. 執行指令
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("修改信用卡付款入帳狀態失敗-" + ex);
            throw new MPRException("修改信用卡付款入帳狀態失敗!", ex);
        }
    }
	
	
}