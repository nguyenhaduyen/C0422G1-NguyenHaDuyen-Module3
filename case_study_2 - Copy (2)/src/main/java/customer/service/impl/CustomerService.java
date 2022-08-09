package customer.service.impl;

import customer.model.Customer;
import customer.repository.ICustomerRepository;
import customer.repository.impl.CustomerRepository;
import customer.service.ICustomerService;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public void add(Customer customer) {
        customerRepository.add(customer);
    }

    @Override
    public void update(Customer customer) {
        customerRepository.update(customer);
    }

    @Override
    public void delete(int id) {
        customerRepository.delete(id);
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public List<Customer> search(String name, String customerCode) {
        return customerRepository.search(name,customerCode);
    }

    @Override
    public Map<String, String> checkValidateCustomer(Customer customer) {
       Map <String,String> mapErrors = new HashMap<>();
       if (!customer.getName().isEmpty()) {
           if (!customer.getName().matches("^([A-Z][a-z]*)+(\\s[A-Z][a-z]+)*$")) {
              mapErrors.put("name","Mời nhập đúng format");
           }
       } else {
           mapErrors.put("name","Ô không được để trống");
       }
        if (!customer.getIdentify().isEmpty()) {
            if (!customer.getIdentify().matches("^[1-9][0-9]{8}$")) {
                mapErrors.put("cmnd","Mời nhập CMND đủ 9 số");
            }
        } else {
            mapErrors.put("cmnd","Ô không được để trống");
        }
        if (!customer.getEmail().isEmpty()) {
            if (!customer.getEmail().matches("^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$")) {
                mapErrors.put("email","Mời nhập đúng format email");
            }
        } else {
            mapErrors.put("email","Ô không được để trống");
        }
        if (!customer.getPhoneNumber().isEmpty()) {
            if (!customer.getPhoneNumber().matches("^[0|84+][90|91][0-9]{8}$")) {
                mapErrors.put("phone","Mời nhập đúng format phone");
            }
        } else {
            mapErrors.put("phone","Ô không được để trống");
        }
        LocalDate birthDay;
        if (!customer.getDateOfBirth().isEmpty()) {
            try {
                birthDay = LocalDate.parse(customer.getDateOfBirth());
                if(Period.between(birthDay,LocalDate.now()).getYears()<18) {
                    mapErrors.put("birthday","Nho hon 18 tuoi");
                }
            } catch (Exception e) {
                mapErrors.put("birthday","Mời nhập đúng format day: yyyy-MM-dd");
            }
        } else {
            mapErrors.put("birthday", "Ô không được để trống");
        }

       return mapErrors;
    }
}
