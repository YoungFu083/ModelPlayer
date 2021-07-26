package uuu.mplayer.service;

import java.util.List;

import uuu.mplayer.entity.Product;
import uuu.mplayer.exception.MPRException;

public class ProductService {
	
	private ProductDAO dao = new ProductDAO();
	
	public List<Product> getAllProducts() throws MPRException{
		
		return dao.selectAllProducts();
	}
	
	public List<Product> getAllProductsByType(int type) throws MPRException{
		
		return dao.selectAllProductsByType(type);
	}
	
	public List<Product> getAllProductsByType(String type) throws MPRException{
		
		return dao.selectAllProductsByType(Integer.parseInt(type));
	}
	
	public Product getProductById(String id) throws MPRException{
		
		return dao.selectProductById(id);
	}
	
	public int getRealTimeStock(Product p) throws MPRException{
		int stock = 0;
		
		return dao.selectRealTimeStock(p.getId());
	}
	
	//以後用不到
	public void addPrice(double price) {
		price = price + 10 ;
	}
	
	//好的商業邏輯運算是要有回傳值，並由主程式決定是否要取代
	public double addPrice(Product p) {
		return (p.getUnitPrice() + 10);
	}
	
	

}
