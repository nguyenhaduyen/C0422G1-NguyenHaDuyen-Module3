package repository.impl;

import customer.Customer;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements repository.CustomerRepository {
    private final String FIND_ALL = "select * from khach_hang";

    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerCode = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                LocalDate dateOfBirth = LocalDate.parse(resultSet.getString("ngay_sinh"));
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String identify = resultSet.getString("so_cmnd");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int typeCustomerCode = resultSet.getInt("ma_loai_khach");
                customerList.add(new Customer(customerCode, name, dateOfBirth, gender, identify, phoneNumber, email, address, typeCustomerCode));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void add(Customer customer) {

    }

    @Override
    public void update(Customer customer) {

    }

    @Override
    public void delete(int id) {

    }
}
