package uuu.mplayer.service;

import javax.management.RuntimeErrorException;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.exception.MPRException;

public class CustomerService {
	private CustomerDAO dao = new CustomerDAO(); //delegation
	
	public Customer login(String id, String pwd) throws MPRException{
		if(id == null || id.length() == 0 
				|| pwd == null || pwd.length() == 0 ) {
			throw new IllegalArgumentException("會員登入時必須輸入帳號或密碼");
		}
		
		
		Customer c = dao.selectCustomerById(id);
		
		//檢查密碼
		if(c != null && pwd.equals(c.getPassword())) {
			return c;
		}else{
			//拋出錯誤
			throw new MPRException("登入失敗，帳號或密碼錯誤");
		}
		
		
		
	}
	
	public void register(Customer customer) throws MPRException{
		if(customer == null) throw new IllegalArgumentException("會員註冊時客戶物件不得為null");
		
		dao.insert(customer);
	}

}
