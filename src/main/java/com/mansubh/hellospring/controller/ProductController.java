/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mansubh.hellospring.controller;

import com.mansubh.hellospring.dao.CategoryDao;
import com.mansubh.hellospring.dao.ProductDao;
import com.mansubh.hellospring.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
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
public class ProductController {
    
    @Autowired
    private CategoryDao categoryDao;
    @Autowired
    private ProductDao productDao;
    
    
    @RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
    public String saveProduct(@RequestParam("prodName") String prodName,
                              @RequestParam("prodKey") String prodKey,
                               @RequestParam("productCat") int prodCat,
                               @RequestParam("prodQuantity") int prodQuantity,
                               @RequestParam("prodDesc") String prodDesc,
                               @RequestParam("prodCost") double prodCost
                               ){
        Product product = new Product();
        product.setProductName(prodName);
        product.setProductKey(prodKey);
        product.setCategoryId(categoryDao.getCategoryById(prodCat));
        product.setProductDescription(prodDesc);
        product.setProductCost(prodCost);
        product.setProductQuantity(prodQuantity);
        
        int result = productDao.insert(product);
        
        System.out.println("product saving result "+ result);
        return "redirect:addProduct";
        
        
    }
    
    
    @RequestMapping(value = "/viewProduct", method = RequestMethod.GET)
    public String viewProduct(Model model){
        model.addAttribute("allproducts", productDao.getAll());
        return "viewProduct";
    }
    
    
    
}
