package repository;

import model.Users;

import java.util.List;

public interface IUserRepository {
    List<Users> findAll();

    void edit(Users users);

    void delete(int id);

    Users findById(int id);

    String addUserTransaction();

}
