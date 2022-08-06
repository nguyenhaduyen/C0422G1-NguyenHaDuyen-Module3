package customer.repository;

import customer.model.TypeCustomer;

import java.util.List;

public interface ITypeCustomerRepository {
    List <TypeCustomer> findAll();
}
