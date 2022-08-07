package service.repository;

import service.model.TypeService;

import java.util.List;

public interface ITypeServiceRepository {
    List<TypeService> findAll();
}
