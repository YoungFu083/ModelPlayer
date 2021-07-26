package uuu.mplayer.test;

import java.util.logging.Level;
import java.util.logging.Logger;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.service.CustomerService;
import uuu.mplayer.exception.MPRException;

public class TestCustomerService_login {

	public static void main(String[] args) {
		CustomerService service = new CustomerService();
		
		//Customer c = service.login(null, null);
		//Customer c = service.login("A123456789", null);
		try {
			Customer c = service.login("A123123123", "asdf1234");
			
			System.out.println(c);
		}catch(MPRException e){
			Logger.getLogger("詳細的錯誤呈現").log(Level.SEVERE, e.getMessage(), e);
		}
		
		

	}

}
