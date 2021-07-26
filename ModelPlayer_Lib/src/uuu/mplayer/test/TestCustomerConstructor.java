package uuu.mplayer.test;

import java.time.LocalDate;

import uuu.mplayer.entity.Customer;

public class TestCustomerConstructor {

	public static void main(String[] args) {
		Customer customer = null;
		
		if(true) {
			customer = new Customer("A123456789", "王曉明", "asdf1234", 'M', LocalDate.of(2000, 1, 1), "test01@uuu.com.tw");
			
//			customer.setId("A123456789");
//			customer.setPassword("asdf1234");
//			customer.setName("王曉明");
//			customer.setGender('M');
//			customer.setBirthday(LocalDate.of(2000, 1, 1));
//			customer.setEmail("test01@uuu.com.tw");
		
			System.out.println(customer.getId());//A123456789
			System.out.println(customer.getPassword());//asdf1234
			System.out.println(customer.getName());//王曉明
			System.out.println(customer.getGender());//M
			System.out.println(customer.getBirthday());//2021-04-12
			System.out.println(customer.getEmail());//test01@uuu.com.tw
			System.out.println(customer.getPhone());//
			System.out.println(customer.isSubscribed());//false
			System.out.println(customer.getAge() + "歲");
		}
		
	}

}
