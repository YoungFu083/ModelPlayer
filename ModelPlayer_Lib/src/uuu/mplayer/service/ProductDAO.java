package uuu.mplayer.service;

import java.util.ArrayList;
import java.util.List;
import uuu.mplayer.entity.Product;
import uuu.mplayer.exception.MPRException;

import java.sql.*;

class ProductDAO {
	
	private static final String SELECT_ALL_PRODUCTS = "SELECT id, name, unit_price, type, "
			+ "photo_url, pre_order "
			+ "FROM products";
	List<Product> selectAllProducts() throws MPRException {
		List<Product> list = new ArrayList<Product>();
		
		
		try (
			Connection connection = RDBConnection.getConnection();	//1., 2. 取得連線
			PreparedStatement pstmt = connection.prepareStatement(SELECT_ALL_PRODUCTS);  //3.準備指令
			ResultSet rs = pstmt.executeQuery();	//4.執行指令
		){
			while(rs.next()) {
				//  5.處理rs
				Product p = new Product();
				
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setUnitPrice(rs.getInt("unit_price"));
				p.setType(rs.getInt("type"));
				p.setPhotoUrl(rs.getString("photo_url"));
				p.setPreOrder(rs.getBoolean("pre_order"));
				
				list.add(p);
				
			}
		} catch (SQLException e) {
			throw new MPRException("查詢產品失敗",e);
		}
		
		return list;
	}
	
	private static final String SELECT_PRODUCTS_BY_TYPE = "SELECT id, name, unit_price, type, photo_url, pre_order "
			+ "	FROM products "
			+ " WHERE type = ?";
	List<Product> selectAllProductsByType(int type) throws MPRException {
		List<Product> list = new ArrayList<Product>();
		
		
		try (
				Connection connection = RDBConnection.getConnection();//1. , 2. 取得連線
				PreparedStatement pstmt = connection.prepareStatement(SELECT_PRODUCTS_BY_TYPE); //3.準備指令
				
			) {
			
			//3.1 傳入?的值
			pstmt.setInt(1, type);
			
			try(
				ResultSet rs = pstmt.executeQuery();
			){
				
				//5. 處理rs
				while(rs.next()) {
					Product p = new Product();
					
					p.setId(rs.getInt("id"));
					p.setName(rs.getString("name"));
					p.setUnitPrice(rs.getInt("unit_price"));
					p.setType(rs.getInt("type"));
					p.setPhotoUrl(rs.getString("photo_url"));
					p.setPreOrder(rs.getBoolean("pre_order"));
					
					list.add(p);
				}
				
			} catch (SQLException e) {
				throw new MPRException("用[分類]查詢產品失敗", e);
			}
			
		} catch (SQLException e) {
			throw new MPRException("用[分類]查詢產品失敗", e);
		}
		
		return list;
	}
	
	private static final String SELECT_PRODUCT_BY_ID="SELECT id, name, unit_price, "
			+ "stock, description, photo_url, shelf_date, shipping_date, pre_order"
			+ "	FROM mplayer.products"
			+ "	WHERE id = ?;";
	
	public Product selectProductById(String id) throws MPRException {
		Product p = null;
		//用id去資料庫查詢1筆產品
		
		try(
				Connection connection = RDBConnection.getConnection();//1. , 2. 取得連線
				PreparedStatement pstmt = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
			) {
			
			
			pstmt.setString(1, id);
			try(	
					ResultSet rs = pstmt.executeQuery();//3.1 傳入?的值
				) {
				
				while(rs.next()) {
					p = new Product();
					
					p.setId(rs.getInt("id"));
					p.setName(rs.getString("name"));
					p.setUnitPrice(rs.getInt("unit_price"));
					p.setStock(rs.getInt("stock"));
					p.setDescription(rs.getString("description"));
					p.setPhotoUrl(rs.getString("photo_url"));
					p.setShelfDate(rs.getString("shelf_date"));
					p.setShippingDate(rs.getString("shipping_date"));
					p.setPreOrder(rs.getBoolean("pre_order"));
					
				}
				
				
			} catch (SQLException e) {
				
				throw new MPRException("用[分類]查詢產品失敗", e);
			}
			
		} catch (SQLException e) {
			
			throw new MPRException("用[id]查詢產品失敗", e);
		}
		
		
		return p;
	}
	
	private static final String SELECT_REALTIME_STOCK_BY_PRODUCT_ID=
			"SELECT id, stock FROM mplayer.products WHERE id=?;";
	
	int selectRealTimeStock(int id) throws MPRException {
		int stock = 0;
		
		
		try(
				//1.2.
				Connection connection = RDBConnection.getConnection();	
				PreparedStatement pstmt = connection.prepareStatement(SELECT_REALTIME_STOCK_BY_PRODUCT_ID);
			) {
			
			//3.傳入?的值
			pstmt.setInt(1, id);
			try(	
					//4.執行指令
					ResultSet rs = pstmt.executeQuery();
				) {
				
				while(rs.next()) {
					stock = rs.getInt("stock");
				}
				
			}
				
			
		} catch (SQLException e) {
			throw new MPRException("用[id]查詢產品[庫存]失敗", e);
		}
		
		return stock;
	}
	
}
