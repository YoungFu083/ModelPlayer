package uuu.mplayer.test;

import uuu.mplayer.entity.Product;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.ProductService;

public class TestProductSevice_getRealTimeStock {

	public static void main(String[] args) {
		ProductService pService = new ProductService();
		
		try {
			Product p1 = pService.getProductById("1");
			Product p8 = pService.getProductById("8");
			Product p4 = pService.getProductById("4");
			Product p5 = pService.getProductById("5");
			Product p6 = pService.getProductById("6");
			Product p7 = pService.getProductById("7");
			
			System.out.println(pService.getRealTimeStock(p1));
			System.out.println(pService.getRealTimeStock(p8));
		} catch (MPRException e) {
			
			e.printStackTrace();
		}

	}

}
