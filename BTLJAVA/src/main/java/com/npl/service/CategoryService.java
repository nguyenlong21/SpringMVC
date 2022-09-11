/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.npl.service;

import com.npl.pojo.Category;
import java.util.List;

/**
 *
 * @author Long
 */
public interface CategoryService {
    List<Category> getCategories();
    Category getCategoryById(int cateId);
}
