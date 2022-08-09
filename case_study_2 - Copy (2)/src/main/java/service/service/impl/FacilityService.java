package service.service.impl;

import service.model.Facility;
import service.repository.IFacilityRepository;
import service.repository.impl.FacilityRepository;
import service.service.IFacilityService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Override
    public Map<String, String> checkValidateFacility(Facility facility) {
        Map<String, String> mapErrors = new HashMap<>();
        if (!facility.getServiceName().isEmpty()) {
            if (!facility.getServiceName().matches("^([A-Z][a-z0-1]*)+(\\s[A-Z0-9][a-z0-9]*)*$")) {
                mapErrors.put("name", "Mời nhập đúng format");
            }
        } else {
            mapErrors.put("name", "Ô không được để trống");
        }
        if (!facility.getNumberOfFloor().matches("[0-9][0-9]*")) {
            mapErrors.put("floor", "Số tầng phải là số nguyên dương");
        }
        return mapErrors;
    }

    @Override
    public List<Facility> search(String name, String id) {
        return facilityRepository.search(name, id);
    }
}
