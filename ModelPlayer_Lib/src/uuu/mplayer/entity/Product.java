package uuu.mplayer.entity;

import java.time.LocalDate;

public class Product {
	
	private int id;	//商品編號, required, PKey, auto-increment
	private String name;//商品名稱, required, unique index, 1~50
	private double unitPrice;//商品售價, required, 定價即為售價
	private int stock;//庫存, required
	private String description = "";//商品描述, optional
	private String photoUrl;//商品圖片網址
	private LocalDate shelfDate;//上架日期
	private int type;	//產品類別
	private boolean preOrder; 	//是否預購
	private LocalDate shippingDate;	//出貨日期
	
	public Product() {
		
	}
	
	//constructor
	public Product(int id, String name, double price) {
		this.setId(id);
		this.setName(name) ;
		this.setUnitPrice(price) ;
	}	
	
	
	public Product(int id, String name, double unitPrice, int stock) {
//		this.id = id;
//		this.name = name;
//		this.unitPrice = unitPrice;
		this(id,name,unitPrice);
		
		this.setStock(stock);
	}


	//取得商品編號
	public int getId() {
		return id;
	}
	
	//設定商品編號
	public void setId(int id) {
		if(id > 0) {
			this.id = id;
		}else {
			System.err.println("Product ID is less then 0");
		}
	}
	
	//取得商品名稱
	public String getName() {
		return name;
	}
	
	//設定商品名稱
	public void setName(String name) {
		if(name != null) {
			this.name = name;
		}else {
			System.err.println("Product name is null");
		}
	}
	
	//查詢商品定價
	public double getUnitPrice() {//查詢售價(定價)
		return unitPrice;
	}
	
	//設定商品定價
	public void setUnitPrice(double unitPrice) {//指派售價(定價)
		if(unitPrice > 0) {
			this.unitPrice = unitPrice;
		}else {
			System.err.println("Product unitPrice is less then 0");
		}
	}
	
	//查詢商品庫存
	public int getStock() {
		return stock;
	}
	
	//查詢商品庫存
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	//查詢商品描述
	public String getDescription() {
		return description;
	}
	
	//設定商品描述
	public void setDescription(String description) {
		this.description = description;
	}
	
	//查詢商品圖片網址
	public String getPhotoUrl() {
		return photoUrl;
	}
	
	//設定商品圖片網址
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	
	//查詢商品上架日期
	public LocalDate getShelfDate() {
		return shelfDate;
	}
	
	//設定商品上架日期
	public void setShelfDate(LocalDate shelfDate) {
		if(shelfDate != null) {
			this.shelfDate = shelfDate;
		}else {
			System.err.println("Product shelfDate is null");
		}
	}
	
	//overloading when input String type and set
	public static final String LOCALDATE_REGULAR = 
					"^\\d{4}[\\-/\\.](0?[1-9]|1[012])[\\-/\\.](0?[1-9]|[12][0-9]|3[01])$";
	public void setShelfDate(String shelfDateString) {
		if(shelfDateString != null && shelfDateString.length() == 10) {
			if(shelfDateString.matches(LOCALDATE_REGULAR)) {
				this.setShelfDate(LocalDate.parse(shelfDateString));
			}else {
				System.err.println("Product上架日期字串格式錯誤");
				//TODO : 第13章 改成 throw exception
			}				
		}else {
			System.err.println("Product上架日期字串傳入值為NULL 或 長度不等於10");
			this.setShelfDate(LocalDate.now());
		}		
	}
	
	//overloading when input int type and set
	public void setShelfDate(int y , int m) {
		if(y > 0 && m > 0 && m < 13) {
			this.setShelfDate(LocalDate.of(y, m, 1));
		}else {
			System.out.println("Product y most more then 0 , m most between 1 ~ 12");
		}
	}

	/**
	 * @return the type
	 */
	public String getType() {
		String[] typeString = new String[] {"其它" , "鬼滅之刃" , "獵人" , "死神" , 
				"遊戲王" , "咒術迴戰"};
		return typeString[this.type];
	}

	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		if(type < 5)this.type = type;
	}

	@Override
	public String toString() {
		
		return this.getClass().getName() + "\n\t[產品編號 = " 
						+ id + "\n\t商品名稱 = " 
						+ name + "\n\t商品定價 = "  
						+ unitPrice + "\n\t商品庫存 = " 
						+ stock + "\n\t商品類別 = "
						+ type + "." + this.getType() + "\n\t商品描述 = "
						+ description + "\n\t商品圖片超連結 = " 
						+ photoUrl + "\n\t商品上架日期 = " + shelfDate 
						+ "\n\t是否可預購 = " + preOrder 
						+ "\n\t出貨日期 = " + shippingDate + "]\n";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (this.getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (id != other.id)
			return false;
		return true;
	}

	/**
	 * @return the preOrder
	 */
	public boolean isPreOrder() {
		
			return preOrder;

	}

	/**
	 * @param preOrder the preOrder to set
	 */
	public void setPreOrder(boolean preOrder) {
		this.preOrder = preOrder;
	}

	/**
	 * @return the shippingDate
	 */
	public LocalDate getShippingDate() {
		return shippingDate;
	}

	/**
	 * @param shippingDate the shippingDate to set
	 */
	public void setShippingDate(LocalDate shippingDate) {
		this.shippingDate = shippingDate;
	}
	public void setShippingDate(String shippingDate) {
		this.shippingDate = LocalDate.parse(shippingDate) ;
	}
	
	
	

}
