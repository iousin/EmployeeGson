package com.employee.model;

public class BusinessAddress extends Address<Integer> {

    private String businessAddressField;

    public String getBusinessAddressField() {
        return businessAddressField;
    }

    public void setBusinessAddressField(String businessAddressField) {
        this.businessAddressField = businessAddressField;
    }
}
