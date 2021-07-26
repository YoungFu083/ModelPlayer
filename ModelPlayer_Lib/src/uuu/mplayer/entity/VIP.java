package uuu.mplayer.entity;

public class VIP extends Customer {
	
	private int discount = 5 ;//5% off

	public int getDiscount() {
		return discount;
	}
	

	public void setDiscount(int discount) {
		if(discount >= 0 && discount <= 90) {
			this.discount = discount;
		}
	}
	
	public String getDiscountString() {
		int discount = 100 - this.discount;
		
		if(discount % 10 == 0) {
			return discount / 10  + "折";
		}else {
			return discount + "折";
		}
		
	}
	
	

	@Override
	public String toString() {
		return  super.toString()+ "\n" 
					+ this.getClass().getName() 
					+ "\n\t[VIP折扣 = " + discount + "% off"
				+  "]";
	}
	
	
	
}
