package uuu.mplayer.entity;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import uuu.mplayer.exception.MPRDataInvalidException;

public class ShoppingCart {
	
	private Customer member;
	private Map<CartItem, Integer> cartItemMap = new HashMap<>() ;
	
	public Customer getMember() {
		return member;
	}
	
	public void setMember(Customer member) {
		this.member = member;
	}
	
	//Map的setter: add, update, remove
	public void add(Product p, boolean preOrdor, int quantity) {
		if(p == null) {
			throw new IllegalArgumentException("加入購物車產品不得為null");
		}
		
		if (quantity>0) {
			CartItem item = new CartItem();
			item.setProduct(p);
			item.setPreOrdor(preOrdor);
			
			//找出是否購物車中已有這個item就是old quantity
			Integer oldQuantity = cartItemMap.get(item);
			if(oldQuantity != null) {
				quantity+=oldQuantity;
			}
			
			cartItemMap.put(item, quantity);//購物車中沒有這個item就是add，購物車中已有這個item就是update value
		}
	}
	
	public void update(CartItem cartItem, int qty) {
		Integer oldQuantity = cartItemMap.get(cartItem);
		if(oldQuantity == null) throw new MPRDataInvalidException("購物車中無此項購物明細，無法修改");
		
		cartItemMap.put(cartItem, qty);
	}
	
	public void remove(CartItem key) {
		cartItemMap.remove(key);
	}

	//Map的getters: 
	//用delegate method寫getters
	public int size() {
		return cartItemMap.size();
	}
	
	
	public boolean isEmpty() {
		return cartItemMap.isEmpty();
	}

	//map才有此方法,傳回Map中的keyset(在此例中為購物明細集合)
	public Set<CartItem> getCartSet() {
		//return (cartItemMap.keySet()); //最不安全，可能被前端修改
		
				//安全作法1:回傳內容不可改的集合
				//return Collections.unmodifiableSet(cartItemMap.keySet());//傳回的集合被前端修改會發生runtime exception		
				
				//安全作法2:回傳集合的複(副)本
				return new HashSet<>(cartItemMap.keySet());//傳回此集合的複(副)本
	}
	
	
	//map才有此方法,傳回Map該筆keyset對應的值(在此例中為購買數量)
	public Integer getQuantity(CartItem key) {
		return cartItemMap.get(key);
	}
	
	//自訂的getters: getAmount(), getTotalQuantity(), getTotalAmount()
	public double getAmount(CartItem key) {
		return key.getProduct().getUnitPrice() * getQuantity(key);
	}
	
	public int getTotalQuantity() {
		int sum = 0;
		for(Integer qty:cartItemMap.values()) {
			if(qty!=null) sum+=qty;
		}
		return sum;
	}
	
	public double getTotalAmount() {
		double sum = 0;
		for(CartItem item:cartItemMap.keySet()) {
			int qty = this.getQuantity(item);
			double price = item.getProduct().getUnitPrice();
			sum += price*qty;
		}
		return sum;
	}
	
	

	@Override
	public String toString() {
		return "\n[購物人 = " + member + "\n 購物明細 = " + cartItemMap + "]";
	}

	
	
}
