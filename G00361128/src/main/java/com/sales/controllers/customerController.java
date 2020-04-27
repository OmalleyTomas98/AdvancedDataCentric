package com.sales.controllers;


import com.sales.models.Customer;
import com.sales.models.Product;
import com.sales.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

@Controller
public class customerController {


    @Autowired
    CustomerService cs;

    @RequestMapping(value = "/listCustomers.html")
    public String listCustomers(Model model)
    {
        ArrayList<Customer>  customer = cs.findAll();
        model.addAttribute(
                "css",customer);
        return "showCustomers";
    }





    @RequestMapping(value = "/addCustomer.html", method = RequestMethod.GET)
    public String addCustomerGET(Model model) {
        Map<Integer, String> customers = new
                LinkedHashMap<Integer, String>();
        customers.put(1, "Iphone1");
        customers.put(2, "Iphone2");
        customers.put(3, "Iphone3");
        customers.put(4, "Iphone4");
        model.addAttribute("customerList", customers);

        Customer c = new Customer();
        model.addAttribute("customer", c);
        return "addCustomer";

    }

    @RequestMapping(value = "/addCustomer.html", method = RequestMethod.POST)
    public String addCustomerPOST(@ModelAttribute("customer") Customer c)
    {
        cs.save(c);
        return"redirect:listCustomers.html";
    }

}
