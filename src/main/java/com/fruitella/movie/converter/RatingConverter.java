package com.fruitella.movie.converter;

import com.fruitella.movie.enums.Rating;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class RatingConverter implements AttributeConverter<Rating, String> {

    @Override
    public String convertToDatabaseColumn(Rating rating) {
        return rating.getRate();
    }

    @Override
    public Rating convertToEntityAttribute(String dbRate) {
        Rating[] ratings = Rating.values();

        for (Rating result : ratings) {
            if (result.getRate().equals(dbRate)) {
                return result;
            }
        }

        return null;
    }
}
