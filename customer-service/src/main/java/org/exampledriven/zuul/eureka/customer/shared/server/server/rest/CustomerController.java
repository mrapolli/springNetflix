package org.exampledriven.zuul.eureka.customer.shared.server.server.rest;

import org.exampledriven.zuul.eureka.customer.shared.server.server.domain.Customer;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.net.URL;
import java.util.LinkedList;
import java.util.List;

@RestController
public class CustomerController {

    private List<Customer> customers;

    public CustomerController() {
        customers = new LinkedList<>();
        customers.add(new Customer(1, "alfranio", "alfranio"));
        customers.add(new Customer(2, "alfranio", "alfranio"));
    }

    @RequestMapping(value = "/customer/{id}", method = RequestMethod.GET, produces = "application/json")


    public Customer getCustomer(@PathVariable int id) {

        System.out.println("ROMARIO");
    	Customer customer = new Customer(); 
    	
		try {
			URL url = new URL("http://192.168.99.100:31852");
			url.openConnection().getInputStream();
			customer.setFirstName("foi");
			customer.setLastName("foi");
		} catch (IOException e) {
			customer.setFirstName("fudeu");
			customer.setLastName("fudeu");
		}

        return customer;

    }

}
