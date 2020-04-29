package com.sales.controllers;


import com.sales.models.Customer;
import com.sales.models.Order;
import com.sales.models.Product;
import com.sales.repositories.OrderRepository;
import com.sales.services.CustomerService;
import com.sales.services.OrderService;
import org.aspectj.weaver.ast.Or;
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
public class orderController {


    @Autowired
    OrderService os;

    @RequestMapping(value = "/listOrders.html")
    public String listOrders(Model model)
    {
        ArrayList<Order> order = os.findAll();
        model.addAttribute(
                "oss",order);
        return "showOrders";
    }

    @RequestMapping(value = "/newOrder.html", method = RequestMethod.GET)
    public String newOrderGET(Model model) {

    ArrayList<Order> orders = os.findAll();


        Map<Customer, Integer > ordersList = new
                LinkedHashMap<Customer, Integer >();

    for (Order o : orders) {
        ordersList.put(

                o.getCust() ,   o.getQty()
        );
    }

        model.addAttribute("ordersList", orders);

        Order o = new Order();
        model.addAttribute("order", o);
        return "newOrder";

    }

    @RequestMapping(value = "/newOrder.html", method = RequestMethod.POST)
    public String newOrderPOST(@ModelAttribute("order") Order o)
    {

        os.save(o);
        return"redirect:listOrders.html";
    }
}