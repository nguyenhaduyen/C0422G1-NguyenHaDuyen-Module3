package model;

import java.time.LocalDate;

public class Customer {
    int customer_code;
    String name;
    LocalDate dateOfBirth;
    String gender;
    String identify;
    String phoneNumber;
    String email;
    String address;
    int typeCustomerCode;

    public Customer(int customer_code, String name, LocalDate dateOfBirth, String gender, String identify, String phoneNumber, String email, String address, int typeCustomerCode) {
        this.customer_code = customer_code;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.identify = identify;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
    }

    public int getCustomer_code() {
        return customer_code;
    }

    public void setCustomer_code(int customer_code) {
        this.customer_code = customer_code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
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
