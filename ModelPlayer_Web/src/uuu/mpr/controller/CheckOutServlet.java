package uuu.mpr.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uuu.mplayer.entity.Customer;
import uuu.mplayer.entity.Order;
import uuu.mplayer.entity.PaymentType;
import uuu.mplayer.entity.ShippingType;
import uuu.mplayer.entity.ShoppingCart;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.exception.MPRStockShortageException;
import uuu.mplayer.service.OrderService;

/**
 * Servlet implementation class CheckOutServlet
 */
@WebServlet("/member/check_out.do")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<String> errors = new ArrayList<>();
		
		Customer member = (Customer)session.getAttribute("member");
		if(member == null){
			response.sendRedirect(request.getContextPath() + "/login.jsp");
			return ;
		}
		
		ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
		if(cart == null) {
			response.sendRedirect(request.getContextPath() + "/member/cart.jsp");
			return ;
		}
		
		String paymentType =  (String) session.getAttribute("payment");
		String shippingType =  (String) session.getAttribute("shipping");
		
		//1.取得request的form data
		
		String recipientName = request.getParameter("receive_name");
		String recipientEmail = request.getParameter("receive_email");
		String recipientPhone = request.getParameter("receive_phone");
		String shippingAddress = request.getParameter("receive_address");
		
		PaymentType pType = null;
		if(paymentType == null ) {
			errors.add("必須選擇付款方式");
		}else {
			pType = PaymentType.valueOf(paymentType);;
		}
		
		ShippingType sType = null;
		if(shippingType == null ) {
			errors.add("必須選擇貨運方式");
		}else {
			sType=ShippingType.valueOf(shippingType);;
		}
		
		if(recipientName == null || (recipientName=recipientName.trim()).length()==0) {
			errors.add("必須輸入收件人姓名");
		}
		
		if(recipientEmail==null || (recipientEmail=recipientEmail.trim()).length()==0) {
			errors.add("必須輸入收件人email");
		}
		
		if(recipientPhone==null || (recipientPhone=recipientPhone.trim()).length()==0) {
			errors.add("必須輸入收件人電話");
		}
		
		if(shippingAddress==null || (shippingAddress=shippingAddress.trim()).length()==0) {
			errors.add("必須輸入收件地址");
		}
		
		if(errors.isEmpty()) {
			Order order = new Order();
			order.setMember(member);
			order.add(cart);
			
			order.setPaymentType(pType);
			order.setPaymentFee(pType.getFee());
			
			order.setShippingType(sType);
			order.setShippingFee(sType.getFee());
			
			order.setRecipientName(recipientName);
			order.setRecipientEmail(recipientEmail);
			order.setRecipientPhone(recipientPhone);
			order.setRecipientAddress(shippingAddress);
			
			OrderService oService = new OrderService();
			try {
				oService.insert(order);				
				session.removeAttribute("cart");
				
				//3.1 forward to check_out_ok.jsp
				request.setAttribute("order", order);
				
				//若paymentType=PaymentType.CARD則轉交/WEB-INF/credit_card.jsp來送出對於第三方支付的請求
	            if(order.getPaymentType()==PaymentType.CARD){                  
	              request.getRequestDispatcher("/WEB-INF/credit_card_5597.jsp").forward(request, response);                 
	               return;
	            }        
				
			
				request.getRequestDispatcher("check_out_ok.jsp").forward(request, response);
				return;
			}catch(MPRStockShortageException e) {
				this.log(e.getMessage(), e);
				session.setAttribute("errors", errors);
				response.sendRedirect(request.getContextPath() + "/member/cart.jsp");
				return;
			}catch(MPRException e) {
				this.log(e.getMessage(), e);
			}catch(Exception e){
				this.log("建立訂單發生非預期錯誤", e);
				errors.add("建立訂單失敗:" + e);
			}
		}
		
		System.out.println("errors : " + errors);
		//3.2 forward to check_out.jsp
		request.setAttribute("errors", errors);
		request.getRequestDispatcher("check_out.jsp").forward(request, response);
		return;
		
	}

}
