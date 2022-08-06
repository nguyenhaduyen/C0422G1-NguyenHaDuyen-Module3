package repository;

import customer.TypeCustomer;

import java.util.List;

public interface TypeCustomerRepository {
    List<TypeCustomer> findAll();
}
