package com.sales.services;

import com.sales.models.Product;
import com.sales.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class ProductService {

    @Autowired
    ProductRepository pr;
    public ArrayList<Product> findAll()
    {
        return (ArrayList<Product>) pr.findAll();
    }
    public void save(Product p)
    {
        pr.save(p);
    }
}
