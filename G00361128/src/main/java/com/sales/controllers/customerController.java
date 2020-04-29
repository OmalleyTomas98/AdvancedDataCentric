package com.sales.controllers;


import com.sales.models.Customer;
import com.sales.models.Product;
import com.sales.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        customers.put(1, "");
        customers.put(2, "");
        customers.put(3, "");
        customers.put(4, "");
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

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }

}