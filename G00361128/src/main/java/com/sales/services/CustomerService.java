package com.sales.services;


import com.sales.models.Customer;
import com.sales.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CustomerService {

    @Autowired
    CustomerRepository cr;
    public ArrayList<Customer> findAll()
    {
        return (ArrayList<Customer>) cr.findAll();
    }

    public void save(Customer c)
    {
        cr.save(c);

    }

}
