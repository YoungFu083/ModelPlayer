package uuu.mplayer.test;

import java.util.List;

import uuu.mplayer.entity.Product;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.ProductService;

public class TestProductService_selectAllProduct {

	public static void main(String[] args) {
		ProductService service = new ProductService();
		try {
			List<Product> list = service.getAllProducts();
			//System.out.println(list);
			System.out.println(service.getAllProductsByType(2));
		} catch (MPRException e) {
			e.printStackTrace();
		}

	}

}
