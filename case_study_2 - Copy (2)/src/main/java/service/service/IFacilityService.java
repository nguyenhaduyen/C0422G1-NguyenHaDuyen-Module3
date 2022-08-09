package service.service;

import customer.model.Customer;
import service.model.Facility;

import java.util.List;
import java.util.Map;

public interface IFacilityService {
    List<Facility> findAll();

    void add(Facility facility);

    void delete(int id);

    void update(Facility facility);

    Facility findById(int id);

    Map<String, String> checkValidateFacility(Facility facility);

    List<Facility> search(String name, String id);
}
