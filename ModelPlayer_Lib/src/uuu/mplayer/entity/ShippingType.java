package uuu.mplayer.entity;

public enum ShippingType {
	
	STORE("超商取貨",65),
	HOME("送貨到府",120),
	TAIPEI("台北門市取貨",0),
	HSINCHU("新竹門市取貨",0),
	TAICHUNG("台中門市取貨",0),
	KAOHSIUNG("高雄門市取貨",0);
	
	private final String description;  //blank final variable
	private final double fee;	//blank final variable
	
	
	private ShippingType(String description, double fee) {
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
