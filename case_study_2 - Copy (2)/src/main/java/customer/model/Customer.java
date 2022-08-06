package customer.model;

import java.time.LocalDate;

public class Customer {
    private int customerCode;
    private String name;
    private String dateOfBirth;
    private boolean gender;
    private String identify;
    private String phoneNumber;
    private String email;
    private String address;
    private int typeCustomerCode;

    public Customer(int customerCode, String name, String dateOfBirth, boolean gender, String identify, String phoneNumber, String email, String address, int typeCustomerCode) {
        this.customerCode = customerCode;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.identify = identify;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.typeCustomerCode = typeCustomerCode;
    }

    public Customer(String name, String dateOfBirth, boolean gender, String identify, String phoneNumber, String email, String address, int typeCustomerCode) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.identify = identify;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.typeCustomerCode = typeCustomerCode;
    }

    public int getCustomerCode() {
        return customerCode;
    }

    public void setCustomer_code(int customer_code) {
        this.customerCode = customerCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getIdentify() {
        return identify;
    }

    public void setIdentify(String identify) {
        this.identify = identify;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getTypeCustomerCode() {
        return typeCustomerCode;
    }

    public void setTypeCustomerCode(int typeCustomerCode) {
        this.typeCustomerCode = typeCustomerCode;
    }
}
