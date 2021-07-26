package uuu.mplayer.entity;

import java.time.LocalDate;
import java.time.Period;

import uuu.mplayer.exception.MPRDataInvalidException;

public class Customer {

	// required一定不能給預設值，optional可以預先給值
	private String id; // required,PKey,須符合ROC_ID ,須符合ROC ID格式與規則
	private String password; // required,6~20個字元
	private String name; // required,2~20個字元
	private char gender; // required, 'M':男, 'F':女
	private LocalDate birthday; // required,年滿12歲
	private String phone = ""; // optional,
	private String email; // required, 須符合email格式
	private boolean subscribed; // optional
	private String address = "";//optional
	
	public Customer(){} //當沒有建立建構子，工具會自動產生"無參數建構子(constructor)" 

	public Customer(String id, String password, String name) {
		this.setId(id);
		this.setPassword(password);
		this.setName(name);
	}
	
	
	public Customer(String id, String password, String name, 
			char gender, LocalDate birthday, String email) {
		
//		this.setId(id);
//		this.setPassword(password);
//		this.setName(name);
		this(id,password,name);
		
		this.setGender(gender);
		this.setBirthday(birthday);
		this.setEmail(email);
	}
	private static final String idPattern = "[A-Z][1289][0-9]{8}";
	//確認身分證格式
	public static boolean cheakId(String id) {
		// TODO : ROC ID 檢查規則
		
		if (id != null && id.matches(idPattern)) {
			// 2.2依據正確格式公式加總，TODO:公式轉換加總
			char firstChar = id.charAt(0);
			int checkNumber = 0;

			if (firstChar == 'B' || firstChar == 'N' || firstChar == 'Z') {
				checkNumber = 0;
			} else if (firstChar == 'A' || firstChar == 'M' || firstChar == 'W') {
				checkNumber = 1;
			} else if (firstChar == 'K' || firstChar == 'L' || firstChar == 'Y') {
				checkNumber = 2;
			} else if (firstChar == 'J' || firstChar == 'V' || firstChar == 'X') {
				checkNumber = 3;
			} else if (firstChar == 'H' || firstChar == 'U') {
				checkNumber = 4;
			} else if (firstChar == 'G' || firstChar == 'T') {
				checkNumber = 5;
			} else if (firstChar == 'F' || firstChar == 'S') {
				checkNumber = 6;
			} else if (firstChar == 'E' || firstChar == 'R') {
				checkNumber = 7;
			} else if (firstChar == 'D' || firstChar == 'O' || firstChar == 'Q') {
				checkNumber = 8;
			} else if (firstChar == 'C' || firstChar == 'I' || firstChar == 'P') {
				checkNumber = 9;
			} else {
				return false;
			}

			for (int i = 1, j = 8; i < 10; i++, j--) {
				if (j <= 1)
					j = 1;
				checkNumber += ((id.charAt(i) - '0') * j);
			}

			return checkNumber % 10 == 0;
		}
		return false;
	}
	
	//設定客戶帳號並檢查
	public void setId(String id) {
		if (id != null) {
			if (cheakId(id)) {
				this.id = id;
			} else {
				//System.err.println("customer身分證號不正確" + id);
				throw new MPRDataInvalidException("customer身分證號不正確" + id);
			}
		} else {
			System.err.println("客戶ID 傳入值為NULL");
		}
	}
	
	//取得客戶帳號
	public String getId() {
		return this.id;
	}
	
	//設定密碼並檢查格式
	public static final int PWD_MIN_LENGTH = 6;
	public static final int PWD_MAX_LENGTH = 20;
	public void setPassword(String password) {
		if (password != null) {
			if (password.length() >= PWD_MIN_LENGTH && password.length() <= PWD_MAX_LENGTH) {
				this.password = password;
			} else {
//				System.err.println("customer 密碼不正確 : " + password + ",密碼必須" 
//									+ PWD_MIN_LENGTH + " ~ " + PWD_MAX_LENGTH + "個字元");
				throw new MPRDataInvalidException("customer 密碼不正確 : " + password + ",密碼必須" 
						+ PWD_MIN_LENGTH + " ~ " + PWD_MAX_LENGTH + "個字元");
			}
		} else {
			System.err.println("customer password傳入值為NULL");
		}
	}
	
	//取得客戶密碼
	public String getPassword() {
		return this.password;
	}

	//取得客戶姓名
	public String getName() {
		return name;
	}

	//設定客戶姓名並檢查
	public static final int NAME_MIN_LENGTH = 2;
	public static final int NAME_MAX_LENGTH = 20;
	public void setName(String name) {
		if (name != null) {
			if (name.length() >= NAME_MIN_LENGTH && name.length() <= NAME_MAX_LENGTH) {
				this.name = name;
			} else {
//				System.err.printf("customer姓名格式錯誤，字元必須%d ~ %d之間",NAME_MIN_LENGTH,NAME_MAX_LENGTH);
				//System.err.println("customer姓名格式錯誤，字元必須"+ NAME_MIN_LENGTH + " ~ " + NAME_MAX_LENGTH + "之間");
				String msg = String.format("customer姓名格式錯誤，字元必須%d ~ %d之間",NAME_MIN_LENGTH,NAME_MAX_LENGTH);
				throw new MPRDataInvalidException(msg);
			}
		} else {
			System.err.println("customer name傳入值為NULL");
		}
	}

	//取得客戶性別
	public char getGender() {
		return gender;
	}

	//設定客戶性別並檢查
	public static final char MALE = 'M';
	public static final char FEMALE = 'F';
	public void setGender(char gender) {
		if (gender != 0) {
			if (gender == MALE || gender == FEMALE) {
				this.gender = gender;
			} else {
//				System.err.println("客戶性別資料錯誤");
				throw new MPRDataInvalidException("客戶性別資料錯誤");
			}
		} else {
			System.err.println("客戶性別 ASCII = 0，尚未給值");
		}

	}

	//取得客戶生日
	public LocalDate getBirthday() {
		return birthday;
	}

	//設定客戶生日並檢查
	public static final int AGE_MIN = 12 ;
	public void setBirthday(LocalDate birthday) {
		if (birthday != null) {
			if (Period.between(birthday, LocalDate.now()).getYears() >= AGE_MIN) {
				this.birthday = birthday;
			} else {
				System.err.println("customer 未滿" + AGE_MIN + "歲");
				//TODO : 第13章 改成 throw exception
			}
		} else {
			System.err.println("customer 生日傳入值為NULL");
		}
	}
	
	//constructor : if input int format when seting costomer birthday and check 
	public void setBirthday(int y , int m) {
		
		if(y > 0 && m > 0 && m <13) {
			this.setBirthday(LocalDate.of(y, m, 1));
		}else {
			System.out.println("customer y OR m is less then 1 OR m more then the 12");
		}
	}
	
	//constructor : if input String format when seting costomer birthday and check
	 
	public void setBirthday(String dateString) {
		if(dateString != null) {
			
				this.setBirthday(LocalDate.parse(dateString));
						
		}else {
			System.err.println("customer生日字串傳入值為NULL");
		}
	}
	
	// 取得客戶手機號碼
	public String getPhone() {
		return phone;
	}

	//設定客戶手機號碼並檢查
	public void setPhone(String phone) {
		if (phone != null) {
			if (phone.matches("[0][9][0-9]{8}") || phone == "") {
				this.phone = phone;
			} else {
//				System.out.println("customer phone格式錯誤");
				throw new MPRDataInvalidException("customer phone格式錯誤");
			}
		} else {
			System.err.println("customer phone傳入值為NULL");
		}
	}
	
	//取的客戶電子信箱
	public String getEmail() {
		return email;
	}

	//設定客戶電子信箱並檢查
	public static final String EMAIL_REGULAR = 
			"^\\w{1,63}@[a-zA-Z0-9]{2,63}\\.[a-zA-Z]{2,63}(\\.[a-zA-Z]{2,63})?$";
	public void setEmail(String email) {
		if (email != null) {
			if (email.matches(EMAIL_REGULAR)) {
				this.email = email;
			} else {
//				System.err.println("customer email格式不正確");
				throw new MPRDataInvalidException("customer email格式不正確");
			}

		} else {
			System.err.println("customer email傳入值為null");
		}
	}
	
	//取得客戶是否訂閱電子報
	public boolean isSubscribed() {
		return subscribed;
	}

	//設定客戶是否訂閱電子報
	public void setSubscribed(boolean subscribed) {
		this.subscribed = subscribed;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	private static final int ADDRESS_LENGTH_MAX = 60;
	private static final int ADDRESS_LENGTH_MIN = 0;
	public void setAddress(String address) {
		if(address.length() < ADDRESS_LENGTH_MIN) {
			this.address = "";
		}else if(address.length() <= ADDRESS_LENGTH_MAX){
			this.address = address;
		}else {
			this.address = "";
		}
		
	}

	//查詢客戶年齡
	public int getAge() {
		int age = -99;
		if (getBirthday() != null) {
//			int thisYear = LocalDate.now().getYear();// thisYear用LocalDate.now().getYear()取得今年的年份
//			int birthYear = getBirthday().getYear();// birthYear用customer.birthday.getYear()取得客戶出生的年份
//			age = thisYear - birthYear;

			age = Period.between(getBirthday(), LocalDate.now()).getYears();
			return age;
		} else {
			System.out.println("沒有客戶的生日資料，無法計算年齡");
			// TODO:第13章 改成 throw exception
		}
		return age;
	}// getAge()
	public int getAge(String date) {
		int age = -99;
		if(date != null) { 
			age = Period.between(LocalDate.parse(date), LocalDate.now()).getYears();
		}
		return age;
	}
	//覆寫toString()，並設定想要輸出得格式
	@Override
	public String toString() {
		return this.getClass().getName() +  "\n\t[客戶帳號 = " 
				+ id + "\n\t客戶密碼 = " + password + "\n\t客戶姓名 = " 
				+ name + "\n\t客戶性別 = " + gender + "\n\t客戶生日 = "
				+ birthday + "\n\t客戶地址 = " + address +"\n\t客戶手機 = " 
				+ phone + "\n\t客戶信箱 = " + email + "\n\t是否訂閱 = " 
				+ subscribed + "\n\t客戶年齡 = "+ getAge() +"]";
	}
	

	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof Customer))
			return false;
		Customer other = (Customer) obj;
		if (id == null) {
			if (other.id != null)//可以註解，因為其中一個參考型別null就可以直接false
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	

}
