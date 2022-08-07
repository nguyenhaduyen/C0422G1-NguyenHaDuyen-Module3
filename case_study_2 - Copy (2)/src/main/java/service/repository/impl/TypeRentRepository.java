package service.repository.impl;

import service.model.TypeRent;
import service.repository.BaseRepository;
import service.repository.ITypeRentRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeRentRepository implements ITypeRentRepository {
    private final String FIND_ALL = "select * from kieu_thue";
    @Override
    public List<TypeRent> findAll() {
        List<TypeRent> typeRentList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                String rentalTypeName = resultSet.getString("ten_kieu_thue");
                typeRentList.add(new TypeRent(rentTypeId, rentalTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
            return typeRentList;
    }
}
