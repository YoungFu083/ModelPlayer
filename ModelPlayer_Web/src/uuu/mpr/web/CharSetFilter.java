package uuu.mpr.web;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class CharSetFilter
 */
@WebFilter(urlPatterns = { "*.do", "*.jsp" })
public class CharSetFilter implements Filter {

    /**
     * Default constructor. 
     */
    public CharSetFilter() {
        
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//前置處理
		request.setCharacterEncoding("UTF-8");
		request.getParameterNames();	//鎖定request的編碼
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter();	//鎖定response的編碼
		
		chain.doFilter(request, response);	//交棒給Filter/Servlet(JSP)
		
		//後續處理(這裡沒有後續處理)...
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
