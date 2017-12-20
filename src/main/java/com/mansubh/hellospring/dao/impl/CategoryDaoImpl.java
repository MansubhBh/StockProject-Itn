/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mansubh.hellospring.dao.impl;

import com.mansubh.hellospring.dao.CategoryDao;
import com.mansubh.hellospring.entity.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Mansubh Bhandari
 */
@Repository
public class CategoryDaoImpl implements CategoryDao{
    
    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction transaction;

    @Override
    public int insert(Category cat) {
     session = sessionFactory.openSession();
     transaction = session.beginTransaction();
     int result = (Integer)session.save(cat);
     transaction.commit();
     session.close();
     return result;
    }

    @Override
    public List<Category> getAll() {
    session = sessionFactory.openSession();
    List<Category> catlist = session.createQuery("select c from Category c").list();
    session.close();
    return catlist;
    }

    @Override
    public Category getCategoryById(int id) {
     session = sessionFactory.openSession();
    Category cat = (Category)session.get(Category.class, id);
    session.close();
    return cat;
    }
    
    
    
    
}
