package uuu.mplayer.service;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import uuu.mplayer.exception.MPRException;

 class RDBConnection {
	 private static final String driver = "com.mysql.cj.jdbc.Driver" ; //mysql 8.0
	 private static final String url = "jdbc:mysql://localhost:3306/mplayer?serverTimezone=Asia/Taipei";
		//jdbc:mysql://localhost:3306/mplayer  <= 8.0.24是對的
		//?serverTimezone=GMT(UTC)(Asia/Taipei) <= 當上面連練失敗在加這一行	
	private static final String userId = "root";
	private static final String pwd = "1234";
				
	 public static Connection getConnection() throws MPRException {
		 try {
	            Context ctx = new InitialContext();
	            if (ctx == null)throw new MPRException("無法取得JNDI Context.");            

	            DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mpr");
	            if (ds == null) 
	            	throw new RuntimeException("DataSource could not be found.");

	            Connection connection = ds.getConnection();
	            System.out.println("從Connection Pool取得Connection:" + connection);
	            return connection;
	        } catch (Exception ex) {
	        	Logger.getLogger("RDBConnection").log(
	        		Level.INFO, "從Connection Pool取得連線失敗，"+ex+". 將從一般方式連線");
				try {				
					Class.forName(driver);//1.載入Driver	
					try {
						Connection connection = DriverManager.getConnection(url,userId,pwd);//2.建立連線
						System.out.println("取得一般Connection:" + connection);
						return connection;
					} catch (SQLException e) {
						throw new MPRException("建立連線失敗",e);
					}
				} catch (ClassNotFoundException e) {			
					throw new MPRException("載入Driver失敗，找不到"+driver);
				}
			}
	 }
}
