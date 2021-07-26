package uuu.mplayer.test;

import uuu.mplayer.entity.Product;

public class TestProduct {

	public static void main(String[] args) {
		Product p = new Product();
		
		System.out.println(p.getId());//0
		System.out.println(p.getName());//null
		System.out.println(p.getUnitPrice());//0.0
		System.out.println(p.getStock());//0
		System.out.println(p.getDescription());//
		System.out.println(p.getShelfDate());//null
		System.out.println(p.getPhotoUrl());//null
		
		
		p.setId(1);
		p.setName("XXXXX");
		p.setUnitPrice(880);
		p.setStock(12);
		p.setType(2);
		
		Product p1 = new Product(1,"XXXXX",880,12);
		
//		System.out.println(p1.getId());//0
//		System.out.println(p1.getName());//null
//		System.out.println(p1.getUnitPrice());//0.0
//		System.out.println(p1.getStock());//0
//		System.out.println(p1.getDescription());//
//		System.out.println(p1.getShelfDate());//null
//		System.out.println(p1.getPhotoUrl());//null
		
		System.out.println("p : " + p);
		
		Product p2 = new Product(2,"OOOOXXXXX",1000);
		
		System.out.println(p2.getId());//0
		System.out.println(p2.getName());//null
		System.out.println(p2.getUnitPrice());//0.0
		System.out.println(p2.getStock());//0
		System.out.println(p2.getDescription());//
		System.out.println(p2.getShelfDate());//null
		System.out.println(p2.getPhotoUrl());//null

	}

}
