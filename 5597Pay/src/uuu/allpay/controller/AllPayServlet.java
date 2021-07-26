package uuu.allpay.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AllPayServlet
 */
@WebServlet("/allpay.do")
public class AllPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllPayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> errors = new ArrayList<>();
		// 1.取得form data
		String customerId=request.getParameter("customerId");
		String orderId=request.getParameter("orderId");
		String orderIdStr=request.getParameter("orderIdStr");
		String url=request.getParameter("url");
		String title=request.getParameter("title");
		String totalAmount=request.getParameter("totalAmount");
		String CCpart1=request.getParameter("CCpart1");
		String CCpart2=request.getParameter("CCpart2");
		String CCpart3=request.getParameter("CCpart3");
		String CCpart4=request.getParameter("CCpart4");
		String CreditMM=request.getParameter("CreditMM");
		String CreditYY=request.getParameter("CreditYY");
		String CreditAuth=request.getParameter("CreditAuth");
		
		if(customerId==null || customerId.length()==0) {
			errors.add("無客戶id");
		}
		
		if(orderId==null || !orderId.matches("\\d+")) {
			errors.add("無訂單編號");
		}
		
		if(orderId==null || !orderId.matches("\\d+")) {
			errors.add("無訂單編號字串");
		}
		
		if(url==null || url.length()==0) {
			//errors.add("無回呼網址url");
			url = "http://10.0.1.3:8080/vgb"+"/member/credit_card_back.do";
		}
		
		if(title==null || title.length()==0) {
			errors.add("無商家名稱title");
		}
		
		try{
			double amount = Double.parseDouble(totalAmount);
		}catch(RuntimeException ex) {
			errors.add("金額不正確: " + totalAmount);
		}
		
		if(CCpart1==null || !CCpart1.matches("\\d{4}") ||
				CCpart2==null || !CCpart2.matches("\\d{4}") ||
				CCpart3==null || !CCpart3.matches("\\d{4}") ||
				CCpart4==null || !CCpart4.matches("\\d{4}")) {
			errors.add("卡號不正確");
		}
				
		if(CreditMM==null || !CreditMM.matches("\\d{2}") || Integer.parseInt(CreditMM)<0 || Integer.parseInt(CreditMM)>12) {
			errors.add("有效月份不正確");
		}else{				
			if(CreditYY==null || !CreditYY.matches("\\d{2}")
					|| Integer.parseInt(CreditYY)<0 || Integer.parseInt(CreditMM)>12) {
				errors.add("有效年份不正確");
			}else {
				LocalDate expiry = LocalDate.of(2000+Integer.parseInt(CreditYY), Integer.parseInt(CreditMM), 1).plusMonths(1);
				if(expiry.isBefore(LocalDate.now())) {
					errors.add("有效年月已過期" + expiry);
				}
			}
		}
		
		if(CreditAuth==null || !CreditAuth.matches("\\d{3}")) {
			errors.add("檢查碼錯誤");
		}
		
		if(errors.isEmpty()) {
		//2. 呼叫
			String authCode = String.format("777%03d", new Random().nextInt(1000));
			//3.1
			request.setAttribute("authCode", authCode);
			request.getRequestDispatcher("allpay_ok.jsp").forward(request, response);
			return;
		}else {
			this.log("授權失敗，資料不正確:\n" + errors);
		}
		
		//3.2
		request.setAttribute("errors", errors);
		request.getRequestDispatcher("/").forward(request, response);
	}

}
