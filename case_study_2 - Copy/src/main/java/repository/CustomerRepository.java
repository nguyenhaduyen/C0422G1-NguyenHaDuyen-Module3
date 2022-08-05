package repository;

import model.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> findAll();
    void add (Customer customer);
    void update (Customer customer);
    void delete (int id);
}
