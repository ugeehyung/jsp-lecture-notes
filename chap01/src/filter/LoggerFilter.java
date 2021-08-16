package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoggerFilter implements Filter {
	
	private String charset = "EUC-KR";
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("필터가 초기화되는 부분");
		
		String value = filterConfig.getInitParameter("something");
		System.out.println("filter의 init parameter에서 가져온 값: " + value);
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("LoggerFilter가 작동되었습니다");
		
		System.out.println("request.getRemoteAddr()");
		request.setCharacterEncoding(charset);
		
		System.out.println("LoggerFilter가 끝났습니다");
		
		//다음 필터로 
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("필터 작업이 끝나고 메모리에서 사라지기 직전");
		Filter.super.destroy();
	}
}
