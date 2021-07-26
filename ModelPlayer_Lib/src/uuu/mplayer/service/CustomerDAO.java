package uuu.mplayer.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import uuu.mplayer.exception.MPRException;
import uuu.mplayer.entity.Customer;

public class CustomerDAO {
	private static final String driver = 
			"com.mysql.cj.jdbc.Driver" ; //mysql 8.0
//	
//	private static final String url = "jdbc:mysql://localhost:3306/mplayer?serverTimezone=Asia/Taipei";
//		//jdbc:mysql://localhost:3306/mplayer  <= 8.0.24是對的
//		//?serverTimezone=GMT(UTC)(Asia/Taipei) <= 當上面連練失敗在加這一行	
//	private static final String userId = "root";
//	private static final String pwd = "1234";
	
	private static final String SELECT_CUSTOMERS = 
			"SELECT id, password, name, gender, birthday, email,"
			+ " phone, address, subscribed"
			+ " FROM customers WHERE id=?";
	
	Customer selectCustomerById(String id) throws MPRException {
		Customer c = null;
		
		
//		try {
//			//
//			Class.forName(driver);
		
			try (
				//try-with-resources
				Connection  connection = RDBConnection.getConnection();
					//RDBConnection.getConnection() (1.載入Driver2.建立連接資料庫)	
				PreparedStatement pstmt = connection.prepareStatement(SELECT_CUSTOMERS);// 3.準備建立指令
			){
				pstmt.setString(1, id);
				
				try(
						ResultSet rs = pstmt.executeQuery();// 4.執行查詢指令
						//System.out.println("rs : " + rs);	
						
					){
						// 5.處理rs
						while(rs.next()) {
							c = new Customer();
							c.setId(rs.getString("id"));
							c.setPassword(rs.getString("password"));
							c.setName(rs.getString("name"));
							c.setGender(rs.getString("gender").charAt(0));
							c.setAddress(rs.getString("address"));
							c.setBirthday(rs.getString("birthday"));
							c.setEmail(rs.getString("email"));
							c.setPhone(rs.getString("phone"));
							c.setSubscribed(rs.getBoolean("subscribed"));
						}
					}
				
			} catch (SQLException e) {
				//e.printStackTrace(); 
				//改成拋出錯誤
				throw new MPRException("用id查詢客戶失敗", e);//e 詳細錯誤過程
			}				

//		} catch (ClassNotFoundException e) {
//			//e.printStackTrace();
//			//改成拋出錯誤
//			throw new MPRException("載入Driver失敗 ， 找不到" + driver);//因為次錯誤單純，所以只傳回原因
//		}
		return c;
	}
	
	private static final String INSERT_CUSTOMER="INSERT INTO customers "
			+ "	(id, password, name, gender, birthday, email, phone, address, subscribed) "
			+ " VALUES(?,?,?,?,?,?,?,?,?)";
	void insert(Customer c) throws MPRException{
		
		try (
				Connection connection = RDBConnection.getConnection();//1,2 取得連線
				PreparedStatement pstmt = connection.prepareStatement(INSERT_CUSTOMER);	// 3.準備建立指令
			){
			
			//3.1 傳入 ? 的值
			pstmt.setString(1, c.getId());
			pstmt.setString(2, c.getPassword());
			pstmt.setString(3, c.getName());
			pstmt.setString(4, String.valueOf(c.getGender()));
			pstmt.setString(5, c.getBirthday().toString());
			pstmt.setString(6, c.getEmail());
			pstmt.setString(7, c.getPhone());
			pstmt.setString(8, c.getAddress());
			pstmt.setBoolean(9, c.isSubscribed());
			int rows = pstmt.executeUpdate();//4.執行指令
		} catch (java.sql.SQLIntegrityConstraintViolationException e){ //pKye || unique index重複
			String msg = e.getMessage();
			if(msg.indexOf("email") > 0) {
				throw new MPRException("新增客戶失敗-email重複註冊");
			}else if(msg.lastIndexOf("PRIMARY") > 0){
				throw new MPRException("新增客戶失敗-id重複註冊");
			}else {
				throw new MPRException("新增客戶失敗-" + e.getMessage(), e);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new MPRException("新增客戶失敗", e);//e 詳細錯誤過程
		}
		
	}
}
