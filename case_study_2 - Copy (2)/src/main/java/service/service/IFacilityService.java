package service.service;

import service.model.Facility;

import java.util.List;

public interface IFacilityService {
    List<Facility> findAll();

    void add(Facility facility);

    void delete(int id);

    void update(Facility facility);

    Facility findById (int id);
}
