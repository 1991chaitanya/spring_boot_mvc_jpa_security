package com.personalChef.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private DataSource dataSource;
	
	@Value("${spring.queries.users-query}")
	private String usersQuery;
	
	@Value("${spring.queries.roles-query}")
	private String rolesQuery;
	
	@Autowired
	@Qualifier(value="handler")
	private AuthenticationSuccessHandler successHandler;

	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.
			jdbcAuthentication()
				.usersByUsernameQuery(usersQuery)
				.authoritiesByUsernameQuery(rolesQuery)
				.dataSource(dataSource);
	}

	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	 http.csrf().disable()
         .authorizeRequests()
				.antMatchers("/admin/**").hasRole("ADMIN")
				.antMatchers("/users/**").hasRole("USER")
				.antMatchers("/logout","/user").permitAll()
         .and()
         .formLogin()
				.loginPage("/login").failureUrl("/show-login?error=true").successHandler(successHandler)
				.usernameParameter("username")
				.passwordParameter("password")
				.and()
         .logout().logoutSuccessUrl("/show-login?error=logged out")
				.permitAll();

    // "/resources/**",
    }
   /* @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .inMemoryAuthentication()
                .withUser("user").password("password").roles("USER");
    }*/
    
    @Override
    public void configure(final WebSecurity web) throws Exception {
       // web.ignoring().antMatchers("/public/**");
    	web
	       .ignoring()
	       .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
    }
}
