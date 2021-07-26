package uuu.mplayer.test;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.Order;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.CustomerService;
import uuu.mplayer.service.OrderService;

public class TestOrderService_getOrderById {

	public static void main(String[] args) {
		CustomerService cService = new CustomerService();
		OrderService oService = new OrderService();
		
			try {
				Customer member  = cService.login("A123456789", "asdf1234");
				Order order = oService.getOrderById("9", member);
				System.out.println(order);
			} catch (MPRException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}

}
