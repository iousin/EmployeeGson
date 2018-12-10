package com.employee.model;

public class PersonalAddress extends Address<String> {

    private String personalAddressField;

    public String getPersonalAddressField() {
        return personalAddressField;
    }

    public void setPersonalAddressField(String personalAddressField) {
        this.personalAddressField = personalAddressField;
    }
}
