package com.employee.model;


public class Address<T> {
	
	private String street;
	private String city;
	private int zipcode;
	private T freeText;

	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public T getFreeText() {
		return freeText;
	}

	public void setFreeText(T freeText) {
		this.freeText = freeText;
	}

	@Override
	public String toString(){
		return getStreet() + ", "+getCity()+", "+getZipcode();
	}
}
