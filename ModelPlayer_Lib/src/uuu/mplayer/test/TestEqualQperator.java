package uuu.mplayer.test;

import java.time.LocalDate;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.Outlet;
import uuu.mplayer.entity.Product;
import uuu.mplayer.entity.VIP;

public class TestEqualQperator {

	public static void main(String[] args) {
		System.out.println(1 == 1.0); //true
		System.out.println(true == false);//false
		
		//參考型別 == 是比較記憶體位子
		//參考型別String物件==
		System.out.println("Hello" == "Hello"); //true
		System.out.println("Hello" == new String("Hello"));//false
		System.out.println("\"Hello\".equals(new String(\"Hello\")) : " + "Hello".equals(new String("Hello")));//true
		
		//參考型別LocalDate物件==
		//System.out.println(LocalDate.parse("2000-10-05") == "2000-10-05");//無法編譯
		System.out.println("LocalDate.parse(\"2000-10-05\").equals(LocalDate.of(2000, 10, 5)) : " + LocalDate.parse("2000-10-05").equals(LocalDate.of(2000, 10, 5)));
		
		//參考型別Customer物件==
		Customer c = new Customer();
		
		c.setId("A123456789");  ;
		c.setName("王曉明");
		c.setPassword("asdf1234");
		c.setGender('M');
		c.setBirthday(LocalDate.parse("2000-10-05"));
		c.setEmail("test01@uuu.com.tw");
		
		Customer c1 = new Customer();
		
		c1.setId("A123456789"); 
		c1.setName("王曉明");
		c1.setPassword("asdf1234");
		c1.setGender('M');
		c1.setBirthday(LocalDate.parse("2000-10-05"));
		c1.setEmail("test01@uuu.com.tw");
		
		System.out.println(c == c1); //false
		System.out.println("c.equals(c1) : " + c.equals(c1)); //false
		System.out.println(c.getBirthday() == LocalDate.parse("2000-10-05"));//false
		
		c1 = c;
		
		System.out.println(c == c1); //true
		
		VIP v = new VIP();
		v.setId("A123456789");
		System.out.println(c == v); //false
		System.out.println("c.equals(v) : " + c.equals(v)); //true
		
		Product p = new Product();
		p.setId(1);
		p.setName("XXXXX");
		p.setUnitPrice(880);
		p.setStock(12);
		
		Product p2 = new Product();
		p2.setId(1);
		p2.setName("XXXXX");
		p2.setUnitPrice(880);
		p2.setStock(12);
		
		System.out.println("p == p2 : " + (p == p2));//false
		System.out.println("p.equals(p2) : " + p.equals(p2));//false
		
		Product p3 = new Product();
		p3.setId(1);
		p3.setName("XXXXX");
		p3.setUnitPrice(880);
		p3.setStock(12);
		
		Outlet outlet = new Outlet();
		outlet.setId(1);
		outlet.setName("XXXXX");
		outlet.setUnitPrice(880);
		outlet.setStock(12);
		outlet.setDiscount(12);
		System.out.println("p == outlet : " + (p == outlet));//false
		System.out.println("p.equals(outlet) : " + p.equals(outlet));//false
		
		Outlet outlet1 = new Outlet();
		outlet1.setId(1);
		outlet1.setName("XXXXX");
		outlet1.setUnitPrice(880);
		outlet1.setStock(12);
		outlet1.setDiscount(12);
		System.out.println("outlet1 == outlet : " + (outlet1 == outlet));//false
		System.out.println("outlet1.equals(outlet) : " + outlet1.equals(outlet));//true
		

	}

}
