package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();
    void add (Customer customer);
    void update (Customer customer);
    void delete (int id);
}
