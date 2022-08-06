package customer.repository.impl;

import customer.model.Customer;
import customer.repository.BaseRepository;
import customer.repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String FIND_ALL = "select * from khach_hang";
    private final String UPDATE = "update khach_hang set ho_ten=?, ngay_sinh=?, gioi_tinh=?, so_cmnd=?, so_dien_thoai=?,email=?,dia_chi=?,ma_loai_khach=? where ma_khach_hang = ?";
    private final String INSERT = "insert into khach_hang(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach) value (?,?,?,?,?,?,?,?)";
    private final String FIND_ID = "select * from khach_hang where ma_khach_hang =?";
    private final String DELETE = "delete from khach_hang where ma_khach_hang = ?";


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
                String dateOfBirth = resultSet.getString("ngay_sinh");
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
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getDateOfBirth());
            preparedStatement.setBoolean(3, customer.getGender());
            preparedStatement.setString(4, customer.getIdentify());
            preparedStatement.setString(5, customer.getPhoneNumber());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setInt(8, customer.getTypeCustomerCode());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getDateOfBirth());
            preparedStatement.setBoolean(3, customer.getGender());
            preparedStatement.setString(4, customer.getIdentify());
            preparedStatement.setString(5, customer.getPhoneNumber());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setInt(8, customer.getTypeCustomerCode());
            preparedStatement.setInt(9,customer.getCustomerCode());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public Customer findById(int id) {
        Customer customer = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("ho_ten");
                String dateOfBirth = resultSet.getString("ngay_sinh");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String identify = resultSet.getString("so_cmnd");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int typeCustomerCode = resultSet.getInt("ma_loai_khach");
                customer = new Customer(id,name,dateOfBirth,gender,identify,phoneNumber,email,address,typeCustomerCode);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }
}
