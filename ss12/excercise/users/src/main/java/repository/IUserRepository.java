package repository;

import model.Users;

import java.util.List;

public interface IUserRepository {
    List<Users> findAll();

    void add(Users users);

    void edit(Users users);

    void delete(int id);

    Users findById(int id);

    List<Users> findByCountry(String country);

    List<Users> sortByName();
}
