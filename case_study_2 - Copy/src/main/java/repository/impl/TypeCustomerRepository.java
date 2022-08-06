package repository.impl;

import customer.TypeCustomer;
import repository.BaseRepository;

import java.sql.Connection;
import java.util.List;

public class TypeCustomerRepository implements repository.TypeCustomerRepository {
    private final String FIND_ALL = "select * from loai_khach";
    @Override
    public List<TypeCustomer> findAll() {
        List<TypeCustomer>
        Connection connection = BaseRepository.getConnectDB();

    }
}
