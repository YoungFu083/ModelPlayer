package uuu.mpr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uuu.mplayer.entity.CartItem;
import uuu.mplayer.entity.ShoppingCart;
import uuu.mplayer.exception.MPRDataInvalidException;

/**
 * Servlet implementation class UpdateCartServlet
 */
@WebServlet(urlPatterns = "/member/update_cart.do")
public class UpdateCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String errors = "";
		//1.取得session
		HttpSession session = request.getSession();
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
		
		String pType = request.getParameter("payment");
		String sType = request.getParameter("shipping");
		System.out.println(pType);
		System.out.println(sType);
		//System.out.println(cart);
		//2.呼叫商業邏輯
		if(cart != null && cart.size() > 0){
			for(CartItem cartItem: cart.getCartSet()) {
				String quantity = request.getParameter("quantity" + cartItem.hashCode());
				String delete = request.getParameter("delete" + cartItem.hashCode());
				
				
				if(delete == null && quantity != null && quantity.matches("\\d+")) {
					try {
						int qty = Integer.parseInt(quantity);
						if(qty > 0) {
							cart.update(cartItem, qty);
						}else {
							cart.remove(cartItem);
						}
						cart.update(cartItem, Integer.parseInt(quantity));
						
					}catch(MPRDataInvalidException e){
						System.out.println(e.getMessage() + cartItem);
					}
				}else if(delete != null) {
					cart.remove(cartItem);
				}
			}
			
			if(pType != null && pType.length() > 0 ) {
				session.setAttribute("payment", pType);
			}else {
				errors = "請選擇 [送貨方式] 跟 [付款方式] ";
			}
			if(sType != null && sType.length() > 0) {
				session.setAttribute("shipping", sType);
			}else {
				errors = "請選擇 [送貨方式] 跟 [付款方式] ";
			}
		}
		
		//3.redirect回cart.jsp
		//response.sendRedirect(request.getContextPath() + "/member/cart.jsp");
		
		String checkout = request.getParameter("checkout");
		if(checkout!=null && pType.length() > 0 && sType.length() > 0) {
			response.sendRedirect("check_out.jsp");
		}else {
			
			if(errors.length() > 0) {
				request.setAttribute("errors", errors);
			}else {
				request.removeAttribute("errors");
			}
			response.sendRedirect("cart.jsp");
		}
		
	}

}
