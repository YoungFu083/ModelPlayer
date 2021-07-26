package uuu.mplayer.test;

import java.time.LocalDate;

import uuu.mplayer.entity.Customer;

public class TestCustomerBirthdayAge {

	public static void main(String[] args) {
		//LocalDate.now()
		//LocalDate.of(2000,3,5)
		//LocalDate.parse("2000-01-15")
		
		Customer customer = new Customer();
		
		customer.setId("A123123123");
		customer.setName("John");
		customer.setBirthday(LocalDate.parse("2000-01-15"));
		
		//計算Customer物件customer的年齡
//		if(customer.birthday != null) {
//			//thisYear用LocalDate.now().getYear()取得今年的年份
//			int thisYear = LocalDate.now().getYear();
//			System.out.println(thisYear);
//			//birthYear用customer.birthday.getYear()取得客戶出生的年份
//			int birthYear = customer.birthday.getYear();
//			System.out.println(birthYear);		
//			int age = thisYear - birthYear ;
//			System.out.println("您的年齡是 : " + age);
//		} else {
//			System.out.println("沒有客戶的生日資料，無法計算年齡");
//		}
		System.out.println(customer.getAge() + "歲");
	}

}
