package service.model;

public class TypeService {
    private int codeTypeService;
    private String serviceTypeName;

    public TypeService(int codeTypeService, String serviceTypeName) {
        this.codeTypeService = codeTypeService;
        this.serviceTypeName = serviceTypeName;
    }

    public int getCodeTypeService() {
        return codeTypeService;
    }

    public void setCodeTypeService(int codeTypeService) {
        this.codeTypeService = codeTypeService;
    }

    public String getServiceTypeName() {
        return serviceTypeName;
    }

    public void setServiceTypeName(String serviceTypeName) {
        this.serviceTypeName = serviceTypeName;
    }
}
