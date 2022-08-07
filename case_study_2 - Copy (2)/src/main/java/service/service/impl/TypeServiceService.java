package service.service.impl;

import service.model.TypeService;
import service.repository.ITypeServiceRepository;
import service.repository.impl.TypeServiceRepository;
import service.service.ITypeServiceService;

import java.util.List;

public class TypeServiceService implements ITypeServiceService {
    ITypeServiceRepository typeServiceRepository = new TypeServiceRepository();
    @Override
    public List<TypeService> findAll() {
        return typeServiceRepository.findAll();
    }
}
