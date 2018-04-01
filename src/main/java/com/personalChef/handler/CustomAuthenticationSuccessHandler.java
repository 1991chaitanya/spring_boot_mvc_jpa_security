package com.personalChef.handler;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component(value="handler")
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler{
	
	private RedirectStrategy strategy = new DefaultRedirectStrategy();

	@Override
	public void onAuthenticationSuccess(HttpServletRequest arg0, HttpServletResponse arg1, Authentication auth)
			throws IOException, ServletException {
		Iterator<? extends GrantedAuthority> iterator = auth.getAuthorities().iterator();
		boolean isAdmin = false;
		while (iterator.hasNext()) {
			  GrantedAuthority authority = iterator.next();
			 if ( authority.getAuthority().contains("USER")) {
				 isAdmin = false;
				 break;
			 } else if(authority.getAuthority().contains("ADMIN")) {
				 isAdmin = true;
				 break;
			 }
		}
		
		if (isAdmin) {
			strategy.sendRedirect(arg0, arg1, "/admin/home");
		} else {
			strategy.sendRedirect(arg0, arg1, "/users/home");
		}
		// TODO Auto-generated method stub
		
	}

}
