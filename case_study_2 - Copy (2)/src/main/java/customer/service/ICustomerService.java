package customer.service;

import customer.model.Customer;

import java.util.List;
import java.util.Map;

public interface ICustomerService {
    List<Customer> findAll();
    void add (Customer customer);
    void update (Customer customer);
    void delete (int id);
    Customer findById (int id);
    List<Customer> search(String name, String customerCode);
    Map<String,String> checkValidateCustomer (Customer customer);
}
