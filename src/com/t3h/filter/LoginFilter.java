package com.t3h.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.t3h.util.AppUtils;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public LoginFilter() {
		// TODO Auto-generated constructor stub
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
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// pass the request along the filter chain
		HttpServletRequest rq = (HttpServletRequest) request;
		String uri = rq.getRequestURI();
		if (uri.endsWith("login") || uri.endsWith("login.jsp") || uri.endsWith(".css") || uri.endsWith(".js")
				|| uri.endsWith(".png") || uri.endsWith(".jpg")) {
			chain.doFilter(request, response);
			return;
		}
		HttpSession session = rq.getSession();
		if (session.getAttribute(AppUtils.isLogin) != null) {
			chain.doFilter(request, response);
			return;
		}
		((HttpServletResponse) response).sendRedirect("login");

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
