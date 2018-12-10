package com.employee.gson;

import com.employee.model.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EmployeeGsonExample {

    static EmployeeService employeeService = new EmployeeService();

    public static void main(String[] args) throws IOException {
        convertEmployees(1);
    }

    public static void convertEmployee() {
        // read JSON file data as String
        String employeeJson = "{\n" +
                "  \"empID\": 100,\n" +
                "  \"name\": \"David\",\n" +
                "  \"permanent\": false,\n" +
                "  \"birthDate\": \"2001-10-25T11:00:00-0100\",\n" +
                "addressHolder: {" +
            "    \"type\": \"PERSONAL\",\n" +
                "  \"min\": {\n" +
                "    \"personalAddressField\": \"My home\",\n" +
                "    \"street\": \"BTM 1st Stage\",\n" +
                "    \"freeText\": \"Personal address free text\",\n" +
                "    \"city\": \"Bangalore\",\n" +
                "    \"zipcode\": 560100\n" +
                "  }\n" +
                " },\n" +
                "  \"phoneNumbers\": [\n" +
                "    123456,\n" +
                "    987654\n" +
                "  ],\n" +
                "  \"role\": \"Manager\",\n" +
                "  \"cities\": [\n" +
                "    \"Los Angeles\",\n" +
                "    \"New York\"\n" +
                "  ],\n" +
                "  \"properties\": {\n" +
                "    \"age\": \"28 years\",\n" +
                "    \"salary\": \"1000 Rs\"\n" +
                "  }\n" +
                "}";

        // parse json string to object
        Employee emp1 = employeeService.employeeFromJson(employeeJson);

        // print object data
        System.out.println("\n\nEmployee Object\n\n" + emp1);

        PersonalAddress empAddress = (PersonalAddress) emp1.getAddressHolder().getMin();
        System.out.println("personal address line=" + empAddress.getPersonalAddressField());
        System.out.println("personal address free text =" + empAddress.getFreeText());
    }

    public static Employee createEmployee(int id) {
        Employee emp = new Employee();
        emp.setId(id);
        emp.setName("David" + id);
        emp.setPermanent(false);
        emp.setPhoneNumbers(new long[]{123456 + id, 987654 + id});
        emp.setRole("Manager" + id);

        PersonalAddress add = new PersonalAddress();
        add.setCity("Bangalore" + id);
        add.setStreet("BTM 1st Stage" + id);
        add.setZipcode(560100 + id);
        AddressHolder<PersonalAddress> addressHolder = new PersonalAddressHolder();
        addressHolder.setMin(add);
        emp.setAddressHolder(addressHolder);

        List<String> cities = new ArrayList<>();
        cities.add("Los Angeles" + id);
        cities.add("New York" + id);
        emp.setCities(cities);

        Map<String, String> props = new HashMap<>();
        props.put("salary", "1000 Rs" + id);
        props.put("age", "28 years" + id);
        emp.setProperties(props);

        return emp;
    }

    public static List<Employee> createEmployees(int numberOfEmployees) {
        List<Employee> employees = new ArrayList<>();
        for (int i = 0; i < numberOfEmployees; i++) {
            employees.add(createEmployee(i + 1));
        }
        return employees;
    }

    public static List<Employee> convertEmployees(int numberOfEmployees) {
        List<Employee> employees = createEmployees(numberOfEmployees);
        String employeesJson = employeeService.employeesToJson(employees);
        System.out.println("employees to json=" + employeesJson);
        List<Employee> convertedEmployees = employeeService.employeesFromJson(employeesJson);
        System.out.println("converted employees count=" + convertedEmployees.size());
        return convertedEmployees;
    }

}
