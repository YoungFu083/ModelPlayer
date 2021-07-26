package uuu.mplayer.test;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.VIP;

public class Test_instanceof {

	public static void main(String[] args) {
		Object o = new Object();
		Customer c = new Customer();
		VIP vip = new VIP();
		
		Object oC = new Customer();
		
		
		
		System.out.println(oC instanceof Object);//true
		System.out.println(c instanceof Object);//true
		System.out.println(vip instanceof Object);//true
		
		System.out.println();
		System.out.println(o instanceof Customer);//false
		System.out.println(c instanceof Customer);//true
		System.out.println(vip instanceof Customer);//true
		
		System.out.println();
		System.out.println(oC instanceof VIP);//false
		System.out.println(c instanceof VIP);//false
		System.out.println(vip instanceof VIP);//true

	}

}
