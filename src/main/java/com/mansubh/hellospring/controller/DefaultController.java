/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mansubh.hellospring.controller;

import com.mansubh.hellospring.dao.CategoryDao;
import com.mansubh.hellospring.entity.Category;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Mansubh Bhandari
 */
@Controller
public class DefaultController {
    
    @Autowired
    private CategoryDao categoryDao;
    
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
    public String addProduct(Model model){
        model.addAttribute("categories", categoryDao.getAll());
        return "addproduct";
    }
    @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
    public String addCategory(Model model){
        model.addAttribute("categories" , categoryDao.getAll());
        return "addCategory";
    }
    
    @RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
    public String saveCategory(@RequestParam("catName") String catName,
                                @RequestParam("catDesc") String catDesc){
        
        Category cat = new Category(1, catName, catDesc);
        int result = categoryDao.insert(cat);
        System.out.println("result is " + result);
       return "redirect:addCategory";
        
        
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
