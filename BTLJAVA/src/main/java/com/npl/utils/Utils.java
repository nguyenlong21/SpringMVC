/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.npl.utils;

import com.npl.pojo.Cart;
import java.util.Map;

/**
 *
 * @author Long
 */
public class Utils {
    public static int countCart(Map<Integer, Cart> cart){
        int q=0;
        
        if(cart!= null)
            for(Cart c: cart.values())
                q += c.getQuantity();
        return q;
    }
    public static Long sumAmount(Map<Integer, Cart> cart){
        Long s = 0l;
        
        if(cart!= null)
            for(Cart c: cart.values())
                s += c.getQuantity() * c.getPrice();
        return s;
    }
}
