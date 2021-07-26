package uuu.mplayer.test;

import java.util.Iterator;

import uuu.mplayer.entity.CartItem;
import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.Order;
import uuu.mplayer.entity.PaymentType;
import uuu.mplayer.entity.Product;
import uuu.mplayer.entity.ShippingType;
import uuu.mplayer.entity.ShoppingCart;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.CustomerService;
import uuu.mplayer.service.OrderService;
import uuu.mplayer.service.ProductService;

public class TestOrderService_insert {

	public static void main(String[] args) {
		CustomerService cService = new CustomerService();
		ProductService pService = new ProductService();
		
		try {
			Customer member = cService.login("A123456789", "asdf1234");
			System.out.println(member.getName());
			
			Product no1 = pService.getProductById("1");
			Product no4 = pService.getProductById("4");
			
			ShoppingCart cart = new ShoppingCart();
			String preOrder = "false";
			cart.setMember(member);
			
			cart.add(no1, preOrder=="true" , 2);
			cart.add(no4, preOrder=="false" , 2);
			
			for(CartItem item:cart.getCartSet()) {
				System.out.println("買 : " + item.getProduct().getName());
				System.out.println("是否預購 : " + (item.isPreOrdor()?"是":"否"));
				System.out.println("數量 : " + cart.getQuantity(item));
				System.out.println("小計 : " + cart.getAmount(item));
				
			}
			
			System.out.println("共買了" + cart.size() + "項 , " 
						+ cart.getTotalQuantity() + "件");
			System.out.println("總金額 : " + cart.getTotalAmount() + "元" );
			System.out.println("cart是否為empty : " + cart.isEmpty());
			
			//建立訂單
			
			Order order = new Order();
			order.setMember(member);
			order.setPaymentType(PaymentType.ATM);
			order.setPaymentFee(PaymentType.ATM.getFee());
			order.setShippingType(ShippingType.HOME);
			order.setShippingFee(ShippingType.HOME.getFee());
			
			order.setRecipientName(member.getName());
			order.setRecipientEmail(member.getEmail());
			order.setRecipientPhone(member.getPhone());
			order.setRecipientAddress(member.getAddress());

			order.add(cart);
			
			System.out.println("***********************************");
			System.out.println(order);
			
			
			OrderService oService = new OrderService();
			oService.insert(order);
			
			System.out.println(order);
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
