package uuu.mplayer.entity;

public class Outlet extends Product {
	private int discount;		
	public Outlet() {}
	
	public int getDiscount() {
		return this.discount;
	}
	
	//設定VIP折扣 % 數
	public void setDiscount(int discount) {
		if(discount >= 0 && discount <= 99) {
			this.discount = discount;
		}else {
			System.err.println("輸入範圍不正確 ， 必須介於0~99");
			this.discount = 0;
		}
	}
	
	//取得TW折扣文字方式輸出 
	public String getDiscountString() {
		int discount = 100 - this.discount;
		if(this.discount == 0) {
			return "此商品尚未有折扣";
		}
		
		if(discount % 10 == 0) {
			return discount / 10  + "折";
		}else {
			return discount + "折";
		}
		
	}
	
	//藉由覆寫(Override) superclass Product 把取得定價 改為 取得售價
	@Override
	public double getUnitPrice() { //查詢售價
		return super.getUnitPrice() * (100 - discount) / 100d ;
	}
	
	//get superclass unitPrice(定價)
	public double getListPrice() {
		return super.getUnitPrice();
	}

	@Override
	public String toString() {
		return   super.toString() + "\n" 
				+ this.getClass().getName() 
				+ "\n\t[折扣 = " + discount + "% off\n\t售價 = " 
				+ getUnitPrice() +  "]";
	}
	
	

}
