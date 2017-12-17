/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mansubh.hellospring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Mansubh Bhandari
 */
@Controller
public class DefaultController {
    
    
    @RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
    public String index(){
        return "welcome";
    }
    
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(){
        return "admin";
    
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(){
        return "login";
    }
    
    @RequestMapping(value = "/addProduct", method = RequestMethod.GET)
    public String addProduct(){
        return "addproduct";
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest req, HttpServletResponse res){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if(auth != null){
            new SecurityContextLogoutHandler().logout(req, res, auth);
        }
        return "redirect:/login?logout";
    }
    
    
    @RequestMapping(value = "/Access_Denied" , method = RequestMethod.GET)
    public String accessDeniedPage(){
        return "accessDenied";
    }
}
