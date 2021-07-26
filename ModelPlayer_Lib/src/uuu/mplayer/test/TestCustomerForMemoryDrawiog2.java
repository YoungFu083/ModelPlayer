package uuu.mplayer.test;

import java.time.LocalDate;

import uuu.mplayer.entity.Customer;

public class TestCustomerForMemoryDrawiog2 {

	public static void main(String[] args) {
		int i = 1;
		i = Integer.parseInt("1");
		int j = i;
		i++;
		System.out.println(i);//2
		System.out.println(j);//1
		
		Customer customer = new Customer();
		customer.setId("A123456789");
		customer.setPassword("asdf1234");;
		customer.setName("王曉明");
		customer.setGender("M".charAt(0));
		customer.setBirthday(LocalDate.parse("2046-09-09")); //ISO-8601規定
		customer.setEmail("test01@uuu.com.tw");
		
		System.out.println("\n******** customer ********\n");
		System.out.println(customer.getId());//A123456789
		System.out.println(customer.getPassword());//asdf1234
		System.out.println(customer.getName());//王曉明
		System.out.println(customer.getGender());//M
		System.out.println(customer.getBirthday());//2021-04-12
		System.out.println(customer.getEmail());//test01@uuu.com.tw
		System.out.println(customer.getPhone());//null
		System.out.println(customer.isSubscribed());//false
		
		
		System.out.println("\n******** customer2 ********\n");
		Customer customer2 = customer ;
		customer2.setId("A123123123");//A123123123
		customer2.setEmail("test02@uuu.com.tw");//test02@uuu.com.tw
		System.out.println(customer2.getId());//A123123123
		System.out.println(customer2.getPassword());//asdf1234
		System.out.println(customer2.getName());//王曉明
		System.out.println(customer2.getGender());//M
		System.out.println(customer2.getBirthday());//2021-04-12
		System.out.println(customer2.getEmail());//test02@uuu.com.tw
		System.out.println(customer2.getPhone());//null
		System.out.println(customer2.isSubscribed());//false
		
		System.out.println("\n******** customer ********\n");
		System.out.println(customer.getId());//A123456789
		System.out.println(customer.getPassword());//asdf1234
		System.out.println(customer.getName());//王曉明
		System.out.println(customer.getGender());//M
		System.out.println(customer.getBirthday());//2021-04-12
		System.out.println(customer.getEmail());//test01@uuu.com.tw
		System.out.println(customer.getPhone());//null
		System.out.println(customer.isSubscribed());//false
	}

}
