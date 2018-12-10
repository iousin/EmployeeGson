package com.employee.gson;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.typeadapters.RuntimeTypeAdapterFactory;
import com.employee.model.AddressHolder;
import com.employee.model.AddressType;
import com.employee.model.BusinessAddressHolder;
import com.employee.model.PersonalAddressHolder;

import java.util.Date;

public class EmployeeGsonConfig {

    private final Gson gson;
    public static final EmployeeGsonConfig INSTANCE = new EmployeeGsonConfig();

    private EmployeeGsonConfig() {
        RuntimeTypeAdapterFactory<AddressHolder> runtimeTypeAdapterFactory = RuntimeTypeAdapterFactory
                .of(AddressHolder.class)
                .registerSubtype(BusinessAddressHolder.class, AddressType.BUSINESS.name())
                .registerSubtype(PersonalAddressHolder.class, AddressType.PERSONAL.name());

        gson = new GsonBuilder()
                .registerTypeAdapterFactory(runtimeTypeAdapterFactory)
                .registerTypeAdapter(Date.class, new DateAdaptor())
                .create();
    }

    public static EmployeeGsonConfig instance() {
        return INSTANCE;
    }

    public Gson getGson() {
        return gson;
    }
}
