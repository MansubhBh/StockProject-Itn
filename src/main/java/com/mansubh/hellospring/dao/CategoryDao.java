/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mansubh.hellospring.dao;

import com.mansubh.hellospring.entity.Category;
import java.util.List;

/**
 *
 * @author Mansubh Bhandari
 */
public interface CategoryDao {
    
    int insert(Category cat);
    List<Category> getAll();
    Category getCategoryById(int id);
}
