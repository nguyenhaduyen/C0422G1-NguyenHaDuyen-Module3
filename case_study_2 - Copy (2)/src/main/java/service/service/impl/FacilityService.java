package service.service.impl;

import service.model.Facility;
import service.repository.IFacilityRepository;
import service.repository.impl.FacilityRepository;
import service.service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public List<Facility> findAll() {
        return facilityRepository.findAll();
    }

    @Override
    public void add(Facility facility) {
        facilityRepository.add(facility);
    }

    @Override
    public void delete(int id) {
        facilityRepository.delete(id);
    }

    @Override
    public void update(Facility facility) {
        facilityRepository.update(facility);
    }

    @Override
    public Facility findById(int id) {
        return facilityRepository.findById(id);
    }
}
