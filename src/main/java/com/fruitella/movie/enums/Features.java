package com.fruitella.movie.enums;


import lombok.AllArgsConstructor;
import lombok.Getter;

import static java.util.Objects.isNull;

@Getter
@AllArgsConstructor
public enum Features {
    TRAILERS("Trailers"),
    COMMENTARIES("Commentaries"),
    DELETED_SCENES("Deleted Scenes"),
    BEHIND_THE_SCENES("Behind the Scenes");

    private final String specialFeatures;

    //set('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes')

    public static Features getFeatureValue(String enumerated) {
        if (isNull(enumerated) || enumerated.isEmpty()) {
            return null;
        }

        Features[] features = Features.values();
        for (Features feature : features) {
            if (feature.specialFeatures.equals(enumerated)) {
                return feature;
            }
        }

        return null;
    }
}
