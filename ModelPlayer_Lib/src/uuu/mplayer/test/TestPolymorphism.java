package uuu.mplayer.test;

import java.time.LocalDate;


import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.VIP;

public class TestPolymorphism {

	public static void main(String[] args) {
		Customer c = new VIP();
		c.setId("A123456789");
		c.setName("王曉明");
		System.out.println(c);
		
		System.out.println(c instanceof VIP);
		 
		if(c instanceof VIP) {
			((VIP) c).setDiscount(25);
			System.out.println(((VIP) c).getDiscount());
		}
		
		Object s = "Hello"; // polymorphism declaration
		String str = new String("Hello") ;// normal declaration
				
		//System.out.println(s.length()); //compile-time error
				
		
		
		if(s instanceof String) { // instanceof : 左邊參考型別變數 是不是 右邊的參考類別
			System.out.println(((String)s).length());//5
		}
		
		System.out.println(str.length()); //5
		System.out.println(s.toString()); // Hello 
		//因為String 有 override toString() 所以優先使用String toString()
		//如果被指派的類別沒有被 override toString() 就找父類別的 toString()
		
		System.out.println(str.toString());//Hello
		
		//Object s = "hello";
		
		s = LocalDate.of(2000, 10, 1);
		

	}

}
