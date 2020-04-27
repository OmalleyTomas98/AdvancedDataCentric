package com.sales.controllers;


import com.sales.models.Customer;
import com.sales.models.Product;
import com.sales.services.CustomerService;
import com.sales.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.Period;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

@Controller
@SessionAttributes("product")
public class productController {

    @Autowired
    ProductService ps;

    @RequestMapping(value = "/listProducts.html")
    public String listProducts(Model model) {
        ArrayList<Product> product = ps.findAll();
        model.addAttribute(
                "pss", product);
        return "showProducts";
    }


    @RequestMapping(value = "/addProduct.html", method = RequestMethod.GET)
    public String addProductGET(Model model) {
        Map<Integer, String> products = new
                LinkedHashMap<Integer, String>();
        products.put(1, "Iphone1");
        products.put(2, "Iphone2");
        products.put(3, "Iphone3");
        products.put(4, "Iphone4");
        model.addAttribute("productList", products);

        Product p = new Product();
        model.addAttribute("product", p);
        return "addProduct";

    }


    @RequestMapping(value = "/addProduct.html", method = RequestMethod.POST)
    public String addProductPOST(@ModelAttribute("product") Product p)
    {

        ps.save(p);
        return"redirect:listProducts.html";
    }
}