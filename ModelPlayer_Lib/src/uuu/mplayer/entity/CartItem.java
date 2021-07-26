package uuu.mplayer.entity;

public class CartItem {
	
	private Product product;	//PKey
	private boolean preOrdor;	//PKey
	
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public boolean isPreOrdor() {
		return preOrdor;
	}
	public void setPreOrdor(boolean preOrdor) {
		this.preOrdor = preOrdor;
	}
	
	
	@Override
	public String toString() {
		return this.getClass().getSimpleName()+
				"\n [購買商品 = " + product + "\n 是否預購 = " + preOrdor + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((product == null) ? 0 : product.hashCode());
		result = prime * result + (preOrdor ? 1231 : 1237);
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
		CartItem other = (CartItem) obj;
		if (preOrdor != other.preOrdor)
			return false;
		if (product == null) {
			if (other.product != null)
				return false;
		} else if (!product.equals(other.product))
			return false;
		return true;
	}
	
}
