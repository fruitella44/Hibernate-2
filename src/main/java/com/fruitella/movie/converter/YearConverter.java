package com.fruitella.movie.converter;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

import java.time.Year;

@Converter(autoApply = true)
public class YearConverter implements AttributeConverter<Year, Short> {


    @Override
    public Short convertToDatabaseColumn(Year year) {
        if (year != null) {
            return (short) year.getValue();
        }

        return null;
    }

    @Override
    public Year convertToEntityAttribute(Short dbAttribute) {
        if (dbAttribute != null) {
            return Year.of(dbAttribute);
        }

        return null;
    }
}
