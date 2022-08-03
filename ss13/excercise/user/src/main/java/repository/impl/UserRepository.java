package repository.impl;

import model.Users;
import repository.BaseRepository;
import repository.IUserRepository;


import java.sql.*;
import java.util.ArrayList;

import java.util.List;

public class UserRepository implements IUserRepository {


    @Override
    public List<Users> findAll() {
        List<Users> usersList = new ArrayList<>();
        String query = "{CALL get_list}";
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                Users users = new Users(id, name, email, country);
                usersList.add(users);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usersList;
    }


    @Override
    public void edit(Users users) {
        Connection connection = BaseRepository.getConnectDB();
        String query = "{CALL edit_user(?,?,?,?)}";
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setString(1,users.getName());
            callableStatement.setString(2, users.getEmail());
            callableStatement.setString(3, users.getCountry());
            callableStatement.setInt(4,users.getId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        String query = "{CALL delete_id(?)}";
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setInt(1,id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Users findById(int id) {
        Users user = null;
        Connection connection = BaseRepository.getConnectDB();
        String query = "{CALL find_id(?)}";
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setInt(1,id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                user = new Users(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user ;
    }

    @Override
    public String addUserTransaction() {
        String mess = "Them moi thanh cong";
        Connection connection = BaseRepository.getConnectDB();
        PreparedStatement preparedStatement ;
        try {
            connection.setAutoCommit(false);
            preparedStatement = connection.prepareStatement("insert into users1(name, email, country) values(?,?,?);");
            preparedStatement.setString(1,"Ha");
            preparedStatement.setString(2,"ha23@gmail.com");
            preparedStatement.setString(3,"VN");
            int affectRow =  preparedStatement.executeUpdate();

            preparedStatement = connection.prepareStatement("insert into student(id,name,email) values (?,?,?);");
            preparedStatement.setInt(1,8);
            preparedStatement.setString(2,"Nguyen");
            preparedStatement.setString(3,"Nguyen11@gmail.com");
            affectRow += preparedStatement.executeUpdate();

            if (affectRow==2){
                connection.commit();
            }else
                connection.rollback();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        }
        return mess;
    }
}
