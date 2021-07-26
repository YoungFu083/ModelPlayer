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
 * Servlet implementation class LoginServlet
 */
@WebServlet(urlPatterns = "/login.do")	//務必保留字串左邊的 /
//完整名稱 http://localhost:8080/mpr/login.do
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<String> errorList = new ArrayList<>();
		
		// 1. 取得request傳來的formData : id, password, CAPTCHA
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String CAPTCHA = request.getParameter("CAPTCHA");
		
		//檢查必要欄位哪些沒有輸入
		if (id == null || id.length() == 0) {
			errorList.add("必須輸入帳號");
		}

		if (password == null || password.length() == 0) {
			errorList.add("必須輸入密碼");
		}

		if (CAPTCHA == null || CAPTCHA.length() == 0) {
			errorList.add("必須輸入驗證碼");
		} else {
			String oldCaptcha = (String)session.getAttribute("captcha");
			System.out.println(oldCaptcha);
			if(!CAPTCHA.equalsIgnoreCase(oldCaptcha)) {
				errorList.add("驗證碼不正確");
			}
		}
		
		session.removeAttribute(CAPTCHA);
		
		//2. 若無誤，呼叫商業邏輯，呼叫商業邏輯 CustomerService login方法
		if(errorList.isEmpty()) {
			CustomerService service = new CustomerService();
			try {
				Customer c = service.login(id, password);
				
				//3.1 內部轉交(forward)login_ok.jsp
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher("login_ok.jsp");
				
				session.setAttribute("member", c);
				
				dispatcher.forward(request, response);
				
				
				return;
				
			} catch (MPRDataInvalidException e) {
				this.log(e.getMessage(), e); //寫給admin, tester
				errorList.add(e.getMessage()); //輸出到網頁上
			} catch (MPRException e) {
				this.log(e.getMessage(), e); //會在server console上看到
				errorList.add(e.getMessage()); //輸出到網頁上
			} catch(Exception e) {	
				this.log("會員登入發生非預期錯誤", e);   //寫給admin, tester, developer
				errorList.add(e.getMessage()+"，請聯絡系統管理員"); //輸出到網頁上
			}
		}
		//3.2 資料檢查有錯或商業邏輯執行失敗，切換回/login.jsp
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/login.jsp");
		
		request.setAttribute("errors", errorList);
		
		dispatcher.forward(request, response);
		
	}

}
