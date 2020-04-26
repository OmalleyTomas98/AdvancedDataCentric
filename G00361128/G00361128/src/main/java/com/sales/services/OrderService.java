package com.sales.services;

import com.sales.models.Order;
import com.sales.repositories.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class OrderService {

    @Autowired
    OrderRepository or;
    public ArrayList<Order> findAll()
    {
        return (ArrayList<Order>) or.findAll();
    }

    public void save(Order o)
    {
        or.save(o);
    }
}


