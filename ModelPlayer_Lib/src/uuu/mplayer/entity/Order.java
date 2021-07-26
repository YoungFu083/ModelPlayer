package uuu.mplayer.entity;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class Order {
	
	private int id;		//PKey, Auto-Increment, required
	
	private Customer member;
	private LocalDate orderDate = LocalDate.now();	//required
	private LocalTime orderTime = LocalTime.now();	//required	
	
	private PaymentType paymentType;	//required
	private String paymentNote;			//null, optional
	private double paymentFee;
	
	private ShippingType shippingType;	//required
	private String shippingNote;		//null, optional
	private double shippingFee;
	
	private String recipientName;
	private String recipientEmail;
	private String recipientPhone;
	private String recipientAddress;

	private int status;		//0-NEW, 1-TRANSFERED, 2-PAID,...
	
	private Set<OrderItem>  orderItemSet = new HashSet<>();
	
	private double totalAmount;
	
	//orderItemSet's GETTER
	
	public Set<OrderItem> getOrderItemSet() {
		return Collections.unmodifiableSet(orderItemSet);
	}
	
	//orderItemSet's SETTER: add, for DAO從資料庫查詢一筆OrderItem加入Set
	public void add(OrderItem orderItem) {
		orderItemSet.add(orderItem);
	}
	
	//orderItemSet's SETTER: add, for Servlet從session找出cart，整個cart的內容加入Set
	public void add(ShoppingCart cart) {
		if(cart != null && cart.size() > 0) {
			for(CartItem cartItem:cart.getCartSet()) {
				OrderItem orderItem = new OrderItem();
				orderItem.setProduct(cartItem.getProduct());
				orderItem.setPreOrder(cartItem.isPreOrdor());
				
				orderItem.setQuantity(cart.getQuantity(cartItem));
				orderItem.setPrice(cartItem.getProduct().getUnitPrice());
				
				orderItemSet.add(orderItem);
			}
		}
	}
	
	//orderItemSet's GETTER, business methods
	
	
	
	public double getTotalAmount() {
		if(orderItemSet.isEmpty()) {
			return totalAmount;
		}else {
			double sum = 0;
			for(OrderItem orderItem:orderItemSet) {
					sum += orderItem.getPrice() * orderItem.getQuantity();
			}
			return sum + paymentFee + shippingFee;
		}
		
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Customer getMember() {
		return member;
	}

	public void setMember(Customer member) {
		this.member = member;
	}

	public LocalDate getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}

	public LocalTime getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(LocalTime orderTime) {
		this.orderTime = orderTime;
	}

	public PaymentType getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(PaymentType paymentType) {
		this.paymentType = paymentType;
	}

	public String getPaymentNote() {
		return paymentNote;
	}

	public void setPaymentNote(String paymentNote) {
		this.paymentNote = paymentNote;
	}

	public double getPaymentFee() {
		return paymentFee;
	}

	public void setPaymentFee(double paymentFee) {
		this.paymentFee = paymentFee;
	}

	public ShippingType getShippingType() {
		return shippingType;
	}

	public void setShippingType(ShippingType shippingType) {
		this.shippingType = shippingType;
	}

	public String getShippingNote() {
		return shippingNote;
	}

	public void setShippingNote(String shippingNote) {
		this.shippingNote = shippingNote;
	}

	public double getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(double shippingFee) {
		this.shippingFee = shippingFee;
	}

	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	public String getRecipientEmail() {
		return recipientEmail;
	}

	public void setRecipientEmail(String recipientEmail) {
		this.recipientEmail = recipientEmail;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}

	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}

	public String getRecipientAddress() {
		return recipientAddress;
	}

	public void setRecipientAddress(String recipientAddress) {
		this.recipientAddress = recipientAddress;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "訂單 [id=" + id + ", 訂購人 =" + (member == null?"無":member.getName()) 
				+ ", \n訂購日期時間=" + orderDate 
				+ " , " + orderTime
				+ ", \n付款方式 = " + paymentType 
				+ ", 付款備註 = " + paymentNote 
				+ ", 手續費 = " + paymentFee
				+ ", \n貨運方式 = " + shippingType 
				+ ", 貨運備註 = " + shippingNote 
				+ ", 手續費 = " + shippingFee
				+ ", \n收件人姓名 = " + recipientName 
				+ ", \n收件人信箱 = " + recipientEmail 
				+ ", \n收件人手機 = " + recipientPhone 
				+ ", \n收件人地址 = " + recipientAddress 
				+ ", \n處理狀態 = " + status
				+ ", 總金額 = " + getTotalAmount()
				+ ", \n訂單明細 = \n" + orderItemSet + "]";
		
	}
	
	
}
