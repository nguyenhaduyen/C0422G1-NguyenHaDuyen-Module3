package customer.repository;

import customer.model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> findAll();
    void add (Customer customer);
    void update (Customer customer);
    void delete (int id);
    Customer findById(int id);
}
