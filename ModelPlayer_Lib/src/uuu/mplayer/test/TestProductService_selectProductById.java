package uuu.mplayer.test;

import java.time.LocalDate;
import java.util.List;

import uuu.mplayer.entity.Product;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.ProductService;

public class TestProductService_selectProductById {

	public static void main(String[] args) {
		ProductService service = new ProductService();
		try {
			Product p = service.getProductById("4");
			//System.out.println(list);
			LocalDate today = LocalDate.now();
			System.out.println("p.getShelfDate() = " + p.getShelfDate());
			System.out.println("p.getShippingDate() = " + p.getShippingDate());
			System.out.println(" \n" + p.getShelfDate().isBefore(p.getShippingDate()));
		} catch (MPRException e) {
			e.printStackTrace();
		}

	}

}
