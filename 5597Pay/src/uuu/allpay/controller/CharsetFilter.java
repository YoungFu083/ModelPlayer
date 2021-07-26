package uuu.allpay.controller;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class CharsetFilter
 */
@WebFilter(urlPatterns={ "*.jsp", "*.do" }, 
	dispatcherTypes = {DispatcherType.REQUEST,DispatcherType.ERROR})
public class CharsetFilter implements Filter {

    /**
     * Default constructor. 
     */
    public CharsetFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
//	public void destroy() {
//	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//System.out.println(((HttpServletRequest)request).getRequestURL() + "交棒前");
		request.setCharacterEncoding("UTF-8");
		request.getParameterNames();//鎖住request的編碼
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter(); //鎖住response的編碼
		
		chain.doFilter(request, response);//交棒
		
		//System.out.println(((HttpServletRequest)request).getRequestURL() + "交棒後");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
//	public void init(FilterConfig fConfig) throws ServletException {	
//	}

}
