package uuu.mplayer.test;

import uuu.mplayer.entity.Product;

public class TestProduct_PassByValue {

	public static void main(String[] args) {
		Product p = new Product(1,"OOOO",880,12);
		
		p.setDescription("");
		p.setPhotoUrl("");
		p.setShelfDate((String)null);
		
		System.out.println("p.getId() : " + p.getId());
		System.out.println("p.getName() : " + p.getName());
		System.out.println("p.getUnitPrice() : " + p.getUnitPrice());
		System.out.println("p.getStocK() : " + p.getStock());
		System.out.println("p.getDescription() : " + p.getDescription());
		System.out.println("p.getPhotoUrl() : " + p.getPhotoUrl());
		System.out.println("p.getShelfDate() : " + p.getShelfDate());

	}

}
