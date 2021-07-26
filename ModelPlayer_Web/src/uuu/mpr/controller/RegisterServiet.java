package uuu.mpr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import uuu.mplayer.entity.Customer;
import uuu.mplayer.exception.MPRDataInvalidException;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.CustomerService;

/**
 * Servlet implementation class RegisterServiet
 */
@WebServlet(urlPatterns ="/registered.do")
public class RegisterServiet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServiet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<String> errorList = new ArrayList<>();
		// 1. 讀取requst中的FormData，並檢查之
		// phone, address, subscription
		request.setCharacterEncoding("utf-8");//當FormData有中文欄位: name, address
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		System.out.println(name);
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");

		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String subscribed = request.getParameter("subscribed");

		String captcha = request.getParameter("CAPTCHA");

		Customer c = new Customer();
		// 檢查必要欄位哪些沒有輸入
		// id
		if (id == null || id.length() == 0) {
			errorList.add("必須輸入帳號");
		}
		// pwd
		if (password == null || 
				password.length() < c.PWD_MIN_LENGTH || 
				password.length() > c.PWD_MAX_LENGTH ) {
			errorList.add("必須輸入長度為"+c.PWD_MIN_LENGTH+" ~ "+c.PWD_MAX_LENGTH+"且內容一致的密碼與確認密碼");
		}
		// name
		if (name == null || 
				name.length() < c.NAME_MIN_LENGTH || 
				name.length() > c.NAME_MAX_LENGTH) {
			errorList.add("必須輸入長度為"+c.NAME_MIN_LENGTH+" ~ "+c.NAME_MAX_LENGTH+"的姓名");
		}
		// gender
		if (gender == null || gender.length() != 1) {
			errorList.add("請選擇性別");
		}
		// birthday
		if (birthday == null || c.getAge(birthday) < 12) {
			errorList.add("請輸入生日或是年齡小於12");
		}
		// email
		if (email == null || email.length() == 0) {
			errorList.add("必須輸入email");
		}
		//
		if (captcha == null || captcha.length() == 0) {
			errorList.add("必須輸入驗證碼");
		} else {
			String oldCaptcha = (String)session.getAttribute("captcha");
			System.out.println(oldCaptcha);
			if(!captcha.equalsIgnoreCase(oldCaptcha)) {
				errorList.add("驗證碼不正確");
			}
		}
		
		session.removeAttribute(captcha);
		
		// 2.若檢查無誤，呼叫商業邏輯
		if (errorList.isEmpty()) {
			try {
				c.setId(id);
				c.setPassword(password);
				c.setName(name);
				c.setGender(gender.charAt(0));
				c.setBirthday(birthday);
				c.setEmail(email);

				c.setAddress(address);
				c.setPhone(phone);

				c.setSubscribed(subscribed != null);

				CustomerService service = new CustomerService();

				// try {
				service.register(c);

				// 3.1 產生註冊成功的回應
				request.setAttribute("customer", c); //註冊成功但未登入
				//session.setAttribute("member", c); //註冊成功並直接登入
				System.out.println(c);
				
				request.getRequestDispatcher("registered_ok.jsp").forward(request, response);
				
				return;
			} catch(MPRDataInvalidException e) {
				errorList.add(e.getMessage()); //輸出到網頁上	
			} catch (MPRException e) {
				this.log(e.getMessage(), e); // 寫給admin, tester
				errorList.add(e.getMessage()); // 輸出到網頁上
			} catch(Exception e) {	
				this.log("會員註冊發生非預期錯誤", e);   //寫給admin, tester, developer
				errorList.add(e.getMessage()+"，請聯絡系統管理員"); //輸出到網頁上
			}
		}
		//3.2 資料檢查有錯或商業邏輯執行失敗，切換成/register.jsp
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/registered.jsp");
		request.setAttribute("errors", errorList);
				
		dispatcher.forward(request, response);	
	}

}
