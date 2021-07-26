package uuu.mplayer.test;

import java.time.LocalDate;

import uuu.mplayer.entity.Outlet;


public class TestOutlet {

	public static void main(String[] args) {
		Outlet outlet = new Outlet();
		outlet.setId(1);
		outlet.setDiscount(8);
		outlet.setName("XX");
		outlet.setUnitPrice(1000);//指派定價
		outlet.setStock(4);
		outlet.setDescription("X=X");
		outlet.setPhotoUrl("unknow");
		outlet.setShelfDate(2012,12);
		
//		System.out.println("outlet.getId() : " + outlet.getId());
//		System.out.println("outlet.getDiscountString() : " + outlet.getDiscountString());
//		System.out.println("outlet.getName() : " + outlet.getName());
//		System.out.println("outlet.getUnitPrice() : " + outlet.getUnitPrice());
//		System.out.println("outlet.getStock() : " + outlet.getStock());
//		System.out.println("outlet.getDescription() : " + outlet.getDescription());
//		System.out.println("outlet.getPhotoUrl() : " + outlet.getPhotoUrl());
//		System.out.println("outlet.getShelfDate() : " + outlet.getShelfDate());
		System.out.println(outlet);
		
//		System.out.println("\n售價 : " + outlet.getUnitPrice());
		
//		System.out.println(LocalDate.now().toString());

	}

}
