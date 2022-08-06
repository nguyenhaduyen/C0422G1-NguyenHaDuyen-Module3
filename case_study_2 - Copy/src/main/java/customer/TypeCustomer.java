package customer;

public class TypeCustomer {
    int typeCustomerCode;
    String nameTypeCustomer;

    public TypeCustomer(int typeCustomerCode, String nameTypeCustomer) {
        this.typeCustomerCode = typeCustomerCode;
        this.nameTypeCustomer = nameTypeCustomer;
    }

    public int getTypeCustomerCode() {
        return typeCustomerCode;
    }

    public void setTypeCustomerCode(int typeCustomerCode) {
        this.typeCustomerCode = typeCustomerCode;
    }

    public String getNameTypeCustomer() {
        return nameTypeCustomer;
    }

    public void setNameTypeCustomer(String nameTypeCustomer) {
        this.nameTypeCustomer = nameTypeCustomer;
    }
}
