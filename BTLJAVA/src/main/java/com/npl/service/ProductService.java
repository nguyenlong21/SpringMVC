/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.npl.service;

import com.npl.pojo.Product;
import java.util.List;

/**
 *
 * @author admin
 */
public interface ProductService {
    List<Product> getProducts(String kw, int page);
    Product getProductById(int productId);
    int countProduct();
    boolean addOrUpdate(Product product);
}
