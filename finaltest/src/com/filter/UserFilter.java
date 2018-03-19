//package com.filter;
//
//import java.io.IOException;
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// * Servlet Filter implementation class UserFilter
// */
//@WebFilter("/UserFilter")
//public class UserFilter implements Filter {
//
//    /**
//     * Default constructor. 
//     */
//    public UserFilter() {
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see Filter#destroy()
//	 */
//	public void destroy() {
//		// TODO Auto-generated method stub
//	}
//
//	/**
//	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
//	 */
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//		// TODO Auto-generated method stub
//		// place your code here
//
//		// pass the request along the filter chain
//		HttpServletRequest httpServletRequest = (HttpServletRequest)request;
//		HttpServletResponse httpServletResponse = (HttpServletResponse)response;
//        String name = (String)  httpServletRequest.getSession().getAttribute("name");
//        if (!isExcludePages(httpServletRequest.getRequestURI())) {
//        	if (name == null || name == " ") {
//        		httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/login.jsp");
//        		return;
//        	}else{
//        		
//        	}
//        	
//        }
//		
//		chain.doFilter(request, response);
//	}
//	
//	private boolean isExcludePages(String url) {     
//		return url.indexOf("login.dhtml") != -1
//				|| url.indexOf("logout.dhtml") != -1
//				|| url.indexOf("login.jsp") != -1
//				|| url.indexOf("regist.jsp") != -1
//				|| url.indexOf("addtrain.jsp") != -1
//				|| url.endsWith(".css")
//				|| url.endsWith(".js")
//				|| url.endsWith(".gif")
//				|| url.endsWith(".jpg")
//				|| url.endsWith(".png"); 
//	} 
//
//	/**
//	 * @see Filter#init(FilterConfig)
//	 */
//	public void init(FilterConfig fConfig) throws ServletException {
//		// TODO Auto-generated method stub
//	}
//
//}
