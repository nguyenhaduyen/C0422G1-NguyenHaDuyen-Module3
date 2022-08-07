package service.model;

public class TypeRent {
        private int rentTypeId;
    private String rentalTypeName;

    public TypeRent(int rentTypeId, String rentalTypeName) {
        this.rentTypeId = rentTypeId;
        this.rentalTypeName = rentalTypeName;
    }

    public int getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(int rentTypeId) {
        this.rentTypeId = rentTypeId;
    }

    public String getRentalTypeName() {
        return rentalTypeName;
    }

    public void setRentalTypeName(String rentalTypeName) {
        this.rentalTypeName = rentalTypeName;
    }
}
