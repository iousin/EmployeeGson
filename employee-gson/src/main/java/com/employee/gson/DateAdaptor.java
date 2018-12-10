package com.employee.gson;

import com.google.gson.*;

import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateAdaptor implements JsonDeserializer<Date>, JsonSerializer<Date> {

    @Override
    public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        JsonPrimitive jsonPrimitive = json.getAsJsonPrimitive();
        //TODO Remove this bodge see https://underwriteme.atlassian.net/browse/OFF-247
        if(jsonPrimitive.isNumber()) {
            return new Date(json.getAsJsonPrimitive().getAsLong());
        }
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.ENGLISH);
        try {
            Date date = format.parse(jsonPrimitive.getAsString());
            return date;
        } catch (ParseException e) {
            e.printStackTrace();
            throw new JsonParseException("Unable to parse string to date " + jsonPrimitive.getAsString());
        }
    }

    @Override
    public JsonElement serialize(Date src, Type typeOfSrc, JsonSerializationContext context) {
        return new JsonPrimitive(src.getTime());
    }
}
