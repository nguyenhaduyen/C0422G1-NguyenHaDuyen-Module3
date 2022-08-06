package customer.service;

import customer.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();
    void add (Customer customer);
    void update (Customer customer);
    void delete (int id);
    Customer findById (int id);
}
