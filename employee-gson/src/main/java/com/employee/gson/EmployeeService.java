package com.employee.gson;

import com.employee.model.Employee;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public class EmployeeService {

    public Employee employeeFromJson(String employeeJson) {
        Employee emp = EmployeeGsonConfig.instance().getGson().fromJson(employeeJson, Employee.class);
        return emp;
    }

    public String employeeToJson(Employee employee) {
        return EmployeeGsonConfig.instance().getGson().toJson(employee);
    }

    public List<Employee> employeesFromJson(String employeesJson) {
        Type employeeListType = new TypeToken<ArrayList<Employee>>(){}.getType();
        List<Employee> employees = EmployeeGsonConfig.instance().getGson().fromJson(employeesJson, employeeListType);
        return employees;
    }

    public String employeesToJson(List<Employee> employees) {
        Type employeeListType = new TypeToken<ArrayList<Employee>>(){}.getType();
        return EmployeeGsonConfig.instance().getGson().toJson(employees, employeeListType);
    }
}
