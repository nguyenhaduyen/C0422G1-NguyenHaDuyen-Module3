package service.repository.impl;

import service.model.Facility;
import service.repository.BaseRepository;
import service.repository.IFacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private final String FIND_ALL = "select * from dich_vu";
    private final String ADD = "insert into dich_vu(ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,dich_vu_mien_phi_di_kem,ma_kieu_thue,ma_loai_dich_vu) value (?,?,?,?,?,?,?,?,?,?,?)";
    private final String DELETE = "delete from dich_vu where ma_dich_vu = ?";
    private final String UPDATE = "update dich_vu set ten_dich_vu=?, dien_tich=?,chi_phi_thue=?,so_nguoi_toi_da=?,tieu_chuan_phong=?,mo_ta_tien_nghi_khac=?,dien_tich_ho_boi=?,so_tang=?,dich_vu_mien_phi_di_kem=?,ma_kieu_thue=?,ma_loai_dich_vu=? where ma_dich_vu = ?";
    private final String FIND_ID = "select * from dich_vu where ma_dich_vu=?";
    private final String SEARCH = "select * from dich_vu where ten_dich_vu like ? and ma_dich_vu like ?";

    @Override
    public List<Facility> findAll() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int serviceCode = resultSet.getInt("ma_dich_vu");
                String serviceName = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                int poolArea = resultSet.getInt("dien_tich_ho_boi");
                String numberOfFloor = resultSet.getString("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int codeTypeService = resultSet.getInt("ma_loai_dich_vu");
                facilityList.add(new Facility(serviceCode, serviceName, area, cost, maxPeople, standardRoom, descriptionOtherConvenience, poolArea, numberOfFloor, facilityFree, rentTypeId, codeTypeService));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public void add(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setString(1, facility.getServiceName());
            preparedStatement.setInt(2, facility.getArea());
            preparedStatement.setDouble(3, facility.getCost());
            preparedStatement.setInt(4, facility.getMaxPeople());
            preparedStatement.setString(5, facility.getStandardRoom());
            preparedStatement.setString(6, facility.getDescriptionOtherConvenience());
            preparedStatement.setInt(7, facility.getPoolArea());
            preparedStatement.setString(8, facility.getNumberOfFloor());
            preparedStatement.setString(9, facility.getFacilityFree());
            preparedStatement.setInt(10, facility.getRentTypeId());
            preparedStatement.setInt(11, facility.getCodeTypeService());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, facility.getServiceName());
            preparedStatement.setInt(2, facility.getArea());
            preparedStatement.setDouble(3, facility.getCost());
            preparedStatement.setInt(4, facility.getMaxPeople());
            preparedStatement.setString(5, facility.getStandardRoom());
            preparedStatement.setString(6, facility.getDescriptionOtherConvenience());
            preparedStatement.setInt(7, facility.getPoolArea());
            preparedStatement.setString(8, facility.getNumberOfFloor());
            preparedStatement.setString(9, facility.getFacilityFree());
            preparedStatement.setInt(10, facility.getRentTypeId());
            preparedStatement.setInt(11, facility.getCodeTypeService());
            preparedStatement.setInt(12, facility.getServiceCode());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Facility findById(int id) {
        Facility facility = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String serviceName = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                int poolArea = resultSet.getInt("dien_tich_ho_boi");
                String numberOfFloor = resultSet.getString("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int codeTypeService = resultSet.getInt("ma_loai_dich_vu");
                facility = new Facility(id, serviceName, area, cost, maxPeople, standardRoom, descriptionOtherConvenience, poolArea, numberOfFloor, facilityFree, rentTypeId, codeTypeService);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facility;
    }

    @Override
    public List<Facility> search(String name, String id) {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH);
            preparedStatement.setString(1,'%'+name+"%");
            preparedStatement.setString(2,"%"+id+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int serviceCode = resultSet.getInt("ma_dich_vu");
                String serviceName = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                int poolArea = resultSet.getInt("dien_tich_ho_boi");
                String numberOfFloor = resultSet.getString("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int codeTypeService = resultSet.getInt("ma_loai_dich_vu");
                facilityList.add(new Facility(serviceCode, serviceName, area, cost, maxPeople, standardRoom, descriptionOtherConvenience, poolArea, numberOfFloor, facilityFree, rentTypeId, codeTypeService));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    return facilityList;
    }
}
