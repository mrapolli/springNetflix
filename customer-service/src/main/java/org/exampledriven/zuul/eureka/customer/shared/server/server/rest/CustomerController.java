package org.exampledriven.zuul.eureka.customer.shared.server.server.rest;

import org.exampledriven.zuul.eureka.customer.shared.server.server.domain.Customer;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

@RestController
public class CustomerController {

    private List<Customer> customers;

    public CustomerController() {
        customers = new LinkedList<>();
        customers.add(new Customer(1, "abdon", "abdon"));
        customers.add(new Customer(2, "abdon", "abdon"));
    }

    @RequestMapping(value = "/customer/{id}", method = RequestMethod.GET, produces = "application/json")     public Customer getCustomer(@PathVariable int id) {

        Optional<Customer> customer = customers.stream().filter(customer1 -> customer1.getId() == id).findFirst();
        System.out.println("Romario");

        return customer.get();

    }

}
