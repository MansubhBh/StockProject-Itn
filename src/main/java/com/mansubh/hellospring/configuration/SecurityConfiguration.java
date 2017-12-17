/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mansubh.hellospring.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author Mansubh Bhandari
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
    
    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception{
        auth.inMemoryAuthentication().withUser("test").password("abc123").roles("USER");
        auth.inMemoryAuthentication().withUser("admin").password("admin123").roles("ADMIN");
    }
    
    

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    
        http.authorizeRequests()
                .antMatchers("/","/home").permitAll()
                .antMatchers("/admin/**").access("hasRole('ADMIN')")
                .and().formLogin().loginPage("/login")
                .usernameParameter("username").passwordParameter("password")
                .and().exceptionHandling().accessDeniedPage("/Access_Denied")
                .and().csrf().disable();
    }
    
    
    
    
    
    
    
}
