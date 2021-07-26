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

import com.mysql.cj.Session;

import uuu.mplayer.entity.Product;
import uuu.mplayer.entity.ShoppingCart;
import uuu.mplayer.exception.MPRException;
import uuu.mplayer.service.ProductService;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet(urlPatterns = "/add_cart.do")//完整url: http://localhost:8080/mpr/add_cart.do
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> errors = new ArrayList<String>();
		HttpSession session = request.getSession();
		//取的request中的form data : 1.productId:1 2.quantity:2 3.preOrder:true
		
		String productId = request.getParameter("productId");
		String quantity = request.getParameter("quantity");
		String preOrder = request.getParameter("preOrder");
		if(productId != null) {
			ProductService pService = new ProductService();
			try {
				Product p = pService.getProductById(productId);
				if(p != null) {
					if(quantity != null && quantity.matches("\\d+")) {
						ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
						if(cart == null) {
							cart = new ShoppingCart();
							session.setAttribute("cart", cart);
						}
						
						cart.add(p, preOrder.equals("1"), Integer.parseInt(quantity));
					}else {
						errors.add("加入購物車時數量必須為正整數: " + productId);
					}
				}else {
					errors.add("加入購物車時查不到該編號的產品: " + productId);
				}
			}catch(MPRException e) {
				errors.add("加入購物車時查詢產品失敗: " + productId);
			}
		}else {
			errors.add("加入購物車必須有產品編號");
		}
		if(errors.size() > 0) {
			request.setAttribute("errors", errors);
		}else {
			request.removeAttribute("errors");
		}
		
		//request.getRequestDispatcher("/member/cart.jsp").forward(request, response);
		response.sendRedirect(request.getContextPath() + "/member/cart.jsp");
	}

}
