package uuu.mplayer.entity;

public class OrderItem {

	
	private Product product;	//PKey
	private boolean preOrder;	//PKey
	private double price;		//交易價格
	private int quantity;		//交易數量
	
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public boolean isPreOrder() {
		return preOrder;
	}
	public void setPreOrder(boolean preOrder) {
		this.preOrder = preOrder;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getAmount(){
		return price*quantity;
	}
	
	
	@Override
	public String toString() {
		return "訂單明細 產品 = " + (product != null?product.getId()+ "," + product.getName() : "沒有產品") 
				+ ", \n是否預購 = " + (preOrder?"是":"否") 
				+ ", \n交易價格 = " + price 
				+ ", \n訂購數量 = " + quantity;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (preOrder ? 1231 : 1237);
		result = prime * result + ((product == null) ? 0 : product.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderItem other = (OrderItem) obj;
		if (preOrder != other.preOrder)
			return false;
		if (product == null) {
			if (other.product != null)
				return false;
		} else if (!product.equals(other.product))
			return false;
		return true;
	}
	
	
	
	
}
