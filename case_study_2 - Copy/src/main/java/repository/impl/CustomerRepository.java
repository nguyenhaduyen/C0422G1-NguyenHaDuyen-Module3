package repository.impl;

import model.Customer;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Collection;
import java.util.List;

public class CustomerRepository implements repository.CustomerRepository {
    private final String FIND_ALL = "select * from khach_hang";
    @Override
    public List<Customer> findAll() {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerCode = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                LocalDate dateOfBirth = LocalDate.parse(resultSet.getString("ngay_sinh"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
