package uuu.mplayer.test;

import java.util.logging.Level;
import java.util.logging.Logger;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.exception.MPRDataInvalidException;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.CustomerService;



public class TestCustomerService_register {

	public static void main(String[] args) {
		Customer c = new Customer();
		try {
			c.setId("A175803307");
			c.setPassword("asdf1234");
			c.setName("王大槌");
			c.setGender(Customer.MALE);
			c.setEmail("test12@uuu.com.tw");
			c.setBirthday("1950-05-05");
			c.setAddress("美國");
			c.setPhone("0988779448");
			c.setSubscribed(true);
			
			CustomerService service = new CustomerService();
		
		
			service.register(c);
			Customer c2 = service.login("A175803307", "asdf1234");
			
			System.out.println(c2);
		} catch (MPRException e) {
			Logger.getLogger("詳細的錯誤呈現").log(Level.SEVERE, e.getMessage(), e);
		} catch (MPRDataInvalidException e) {
			System.err.println(e.getMessage());
		}
		

	}

}
