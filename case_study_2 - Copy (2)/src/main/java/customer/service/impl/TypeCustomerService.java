package customer.service.impl;

import customer.model.TypeCustomer;
import customer.repository.ICustomerRepository;
import customer.repository.ITypeCustomerRepository;
import customer.repository.impl.TypeCustomerRepository;
import customer.service.ITypeCustomerService;

import java.util.List;

public class TypeCustomerService implements ITypeCustomerService {
    ITypeCustomerRepository typeCustomerRepository = new TypeCustomerRepository();

    @Override
    public List<TypeCustomer> findAll() {
        return typeCustomerRepository.findAll();
    }
}
