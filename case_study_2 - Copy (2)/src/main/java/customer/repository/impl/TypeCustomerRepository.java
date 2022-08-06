package customer.repository.impl;

import customer.model.TypeCustomer;
import customer.repository.BaseRepository;
import customer.repository.ITypeCustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeCustomerRepository implements ITypeCustomerRepository {
    private final String FIND_ALL = "select * from loai_khach";
    @Override
    public List<TypeCustomer> findAll() {
        List<TypeCustomer> typeCustomerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int typeCustomerCode = resultSet.getInt("ma_loai_khach");
                String nameTypeCustomer = resultSet.getString("ten_loai_khach");
                typeCustomerList.add(new TypeCustomer(typeCustomerCode,nameTypeCustomer));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return typeCustomerList;
    }
}
