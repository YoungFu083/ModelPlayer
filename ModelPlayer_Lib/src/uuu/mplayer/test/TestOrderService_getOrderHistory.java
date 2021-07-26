package uuu.mplayer.test;

import java.util.List;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.Order;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.CustomerService;
import uuu.mplayer.service.OrderService;

public class TestOrderService_getOrderHistory {

	public static void main(String[] args) {
		CustomerService cService = new CustomerService();
		
		
		try {
			OrderService oService = new OrderService();
			Customer member = cService.login("A123456789", "asdf1234");
			List<Order> list = oService.getOrderHistory(member.getId());
			
			System.out.println(list);
		} catch (MPRException e) {

			e.printStackTrace();
		}
		
		
		

	}

}
