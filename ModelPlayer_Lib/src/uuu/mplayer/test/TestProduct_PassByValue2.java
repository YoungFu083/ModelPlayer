package uuu.mplayer.test;

import uuu.mplayer.entity.Product;
import uuu.mplayer.service.ProductService;

public class TestProduct_PassByValue2 {

	public static void main(String[] args) {
		Product p = new Product(1,"OOOO",880,12);
		
		p.setDescription("");
		p.setPhotoUrl("");
		p.setShelfDate((String)null);
		
		System.out.println("p.getId() : " + p.getId());//1
		System.out.println("p.getName() : " + p.getName());//OOOO
		System.out.println("p.getUnitPrice() : " + p.getUnitPrice());//880
		System.out.println("p.getStocK() : " + p.getStock());//12
		System.out.println("p.getDescription() : " + p.getDescription());//
		System.out.println("p.getPhotoUrl() : " + p.getPhotoUrl());//
		System.out.println("p.getShelfDate() : " + p.getShelfDate());//2021-4-19
		
		ProductService service = new ProductService();
		
		service.addPrice(p.getUnitPrice());
		
		System.out.println("p.getUnitPrice() :" + p.getUnitPrice());//880.0
		
		double newPrice = service.addPrice(p);
		p.setUnitPrice(newPrice);
		
		System.out.println("p.getUnitPrice() : " + p.getUnitPrice());//890.0

	}
	
	

}
