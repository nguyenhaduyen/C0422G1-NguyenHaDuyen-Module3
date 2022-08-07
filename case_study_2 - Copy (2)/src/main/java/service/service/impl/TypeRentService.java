package service.service.impl;

import service.model.TypeRent;
import service.repository.ITypeRentRepository;
import service.repository.ITypeServiceRepository;
import service.repository.impl.TypeRentRepository;
import service.repository.impl.TypeServiceRepository;
import service.service.ITypeRentService;

import java.util.List;

public class TypeRentService implements ITypeRentService {
    ITypeRentRepository typeRentRepository = new TypeRentRepository();
    @Override
    public List<TypeRent> findAll() {
        return typeRentRepository.findAll();
    }
}
