package service.impl;

import model.Users;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository = new UserRepository();

    @Override
    public List<Users> findAll() {
        return userRepository.findAll();
    }

    @Override
    public void add(Users users) {
        userRepository.add(users);
    }

    @Override
    public void edit(int id, Users users) {
        userRepository.edit(id, users);

    }

    @Override
    public boolean delete(int id) {
        return userRepository.delete(id);
    }

    @Override
    public Users findById(int id) {
        return userRepository.findById(id);
    }

    @Override
    public List<Users> findByCountry(String country) {
        return userRepository.findByCountry(country);
    }

    @Override
    public List<Users> sortByName() {
        return userRepository.sortByName();
    }
}
