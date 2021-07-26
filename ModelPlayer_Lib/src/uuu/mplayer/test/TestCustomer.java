package uuu.mplayer.test;

import java.time.LocalDate;

import uuu.mplayer.entity.Customer;

public class TestCustomer {

	public static void main(String[] args) {
		Customer customer = null;
		
		if(true) {
			customer = new Customer();
			customer.setId("A123456789");
			customer.setPassword("asdf1234");
			customer.setName("王曉明");
			customer.setGender('M');
			customer.setBirthday("2001-01-10");
			customer.setEmail("test01@uuu.com.tw");
		
//			System.out.println(customer.getId());//A123456789
//			System.out.println(customer.getPassword());//asdf1234
//			System.out.println(customer.getName());//王曉明
//			System.out.println(customer.getGender());//M
//			System.out.println(customer.getBirthday());//2021-04-12
//			System.out.println(customer.getEmail());//test01@uuu.com.tw
//			System.out.println(customer.getPhone());//
//			System.out.println(customer.isSubscribed());//false
//			System.out.println(customer.getAge() + "歲");
			
			//透過override toString() 輸出上面全部output print方便"測試"
			System.out.println(customer);
		}
		
	}

}
