package uuu.mplayer.service;

import java.time.LocalDateTime;
import java.util.List;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.Order;
import uuu.mplayer.exception.MPRException;

public class OrderService {
	private OrderDAO dao  = new OrderDAO();
	
	public void insert(Order order)throws MPRException{
		dao.insert(order);
	}
	
	public List<Order> getOrderHistory(String memberId)throws MPRException{
		return dao.selectOrderHistory(memberId);
	}
	
	public Order getOrderById(String id, Customer member)throws MPRException {
		Order order = dao.selectOrderById(id);
		
		if(order!=null && member!=null && member.equals(order.getMember())) {
			return order;
		}else {
			return null;		
		}
		
		
	}

	public void updateStatusToPAID(int orderId, String customerId, String cardF6, String cardL4, String auth,
			String paymentDate, String amount) throws MPRException {
		
		StringBuilder paymentNote = new StringBuilder("信用卡號:");
        paymentNote.append(cardF6==null?"4311-95":cardF6).append("**-****").append(cardL4==null?2222:cardL4);
        paymentNote.append(",授權碼:").append(auth==null?"777777":auth);
        paymentNote.append(",交易時間:").append(paymentDate==null?LocalDateTime.now():paymentDate);
//        paymentNote.append(",刷卡金額:").append(amount);
        System.out.println("orderId = " + orderId);
        System.out.println("customerId = " + customerId);
        System.out.println("paymentNote = " + paymentNote);
        dao.updateStatusToPAID(orderId, customerId, paymentNote.toString());
		
		
	}
}
