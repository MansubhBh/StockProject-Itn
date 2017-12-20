/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mansubh.hellospring.dao.impl;

import com.mansubh.hellospring.dao.ProductDao;
import com.mansubh.hellospring.entity.Product;
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
public class ProductDaoImpl implements ProductDao{
    
    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction transaction;

    @Override
    public int insert(Product prod) {
    session = sessionFactory.openSession();
    transaction = session.beginTransaction();
    int result = (Integer)session.save(prod);
    transaction.commit();
    session.close();
    return result;
    }

    @Override
    public List<Product> getAll() {
    session = sessionFactory.openSession();
    List<Product> productlist = session.createQuery("Select p from Product p").list();
    session.close();
    return productlist;
    }
    
    
    
}
