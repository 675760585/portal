package com.awh.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;


/**
 *
 */
public class SessionFilter extends OncePerRequestFilter {
	
	//加载全部菜单
	//private HashMap<String, Menu> menuMap = InitMap.getInstance().getMenuUrlMap();
	
	@Override
	protected void doFilterInternal(HttpServletRequest request,
			HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
        // 设置request和response的字符集，防止乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 请求的uri
        String uri = request.getRequestURI();
        FilterConfig config = getFilterConfig();
        
        //止后缀无需过滤，配置的资源文件
        String suffix = config.getInitParameter("suffix");
		String[] suffixList = suffix.split(";");
		if (isContains(uri, suffixList)) {
			filterChain.doFilter(request, response);
			return;
		}
        //止后缀无需过滤，为api,通知等链接
//        String access = config.getInitParameter("access");
//		String[] accessList = access.split(";");
//		if (isContains(uri, accessList)) {
//			filterChain.doFilter(request, response);
//			return;
//		}
		
        // 执行过滤,从session中获取登录者实体
//        Object obj = request.getSession().getAttribute(Constant.SESSION_USER);
//        if (null == obj) {
//            // 如果session中不存在登录者实体，则弹出框提示重新登录
//            request.getRequestDispatcher("/sys/login").forward(request,response);
//        } else {
//        	String path = request.getContextPath();
        	//根据uri获取当前菜单与父菜单
        	//Menu menu = menuMap.get(uri.replaceAll(path, ""));
//        	if(menu == null){
        		//如果为空，提示页面不存在
//        		String respUrl = request.getScheme() + "://" + request.getServerName()
//        				+ ":" + request.getServerPort() + request.getContextPath();
//        		response.sendRedirect(respUrl+"/404.jsp");
//        		return;
//       	}
        	//设置子菜单与父菜单
        	//request.setAttribute(Constant.MENU, menu);
        	
    		//request.setAttribute("curMenu", menu);
        	
            // 如果session中存在登录者实体，则继续
            filterChain.doFilter(request, response);
//        }
    }
	
	public static boolean isContains(String container, String[] regx) {
		boolean result = false;
		for (int i = 0; i < regx.length; i++) {
			regx[i] = regx[i].trim();
			if (container.indexOf(regx[i]) != -1) {
				result = true;
			}
		}
		return result;
	}

}
