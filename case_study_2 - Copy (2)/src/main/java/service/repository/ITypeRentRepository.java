package service.repository;

import service.model.TypeRent;

import java.util.List;

public interface ITypeRentRepository {
    List<TypeRent> findAll();
}
