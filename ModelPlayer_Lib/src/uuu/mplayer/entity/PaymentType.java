package uuu.mplayer.entity;

public enum PaymentType {
	
	STORE("超商貨到付款",0),
	ATM("ATM轉帳",0),
	CARD("信用卡",0),
	SHOP("門市取貨付款",0);
	
	private final String description;
	private final double fee;
	
	
	private PaymentType(String description, double fee) {
		this.description = description;
		this.fee = fee;
	}
	
	public String getDescription() {
		return description;
	}
	public double getFee() {
		return fee;
	}

	@Override
	public String toString() {
		return description + (fee > 0?("," + fee + "元"):"");
	}
	
	

}
