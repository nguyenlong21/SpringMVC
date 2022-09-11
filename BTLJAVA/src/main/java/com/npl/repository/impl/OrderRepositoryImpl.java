/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.npl.repository.impl;

import com.npl.pojo.Cart;
import com.npl.pojo.SaleOrder;
import com.npl.repository.OrderRepository;
import com.npl.repository.UserRepository;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Long
 */
@Repository
public class OrderRepositoryImpl implements OrderRepository{
    @Autowired
    private UserRepository userRepository;
    @Override
    public boolean addReceipt(Map<Integer, Cart> cart) {
        SaleOrder order = new SaleOrder();
        
        return false;
    }
    
}
