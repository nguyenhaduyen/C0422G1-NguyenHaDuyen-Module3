package service.repository.impl;

import service.model.TypeService;
import service.repository.BaseRepository;
import service.repository.ITypeServiceRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeServiceRepository implements ITypeServiceRepository {
    private final String FIND_ALL = "select * from loai_dich_vu";
    @Override
    public List<TypeService> findAll() {
        List<TypeService> typeServiceList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery(FIND_ALL);
            while (resultSet.next()) {
                int codeTypeService = resultSet.getInt("ma_loai_dich_vu");
                String serviceTypeName = resultSet.getString("ten_loai_dich_vu");
                typeServiceList.add(new TypeService(codeTypeService,serviceTypeName));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return typeServiceList;
    }
}
