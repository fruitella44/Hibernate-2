package com.fruitella.movie.enums;


import static java.util.Objects.isNull;


public enum Features {
    TRAILERS("Trailers"),
    COMMENTARIES("Commentaries"),
    DELETED_SCENES("Deleted Scenes"),
    BEHIND_THE_SCENES("Behind the Scenes");

    private final String specialFeatures;

    Features(String specialFeatures) {
        this.specialFeatures = specialFeatures;
    }

    //set('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes')

    public static Features getFeatureValue(String vale) {
        if (isNull(vale) || vale.isEmpty()) {
            return null;
        }

        Features[] features = Features.values();
        for (Features feature : features) {
            if (feature.specialFeatures.equals(vale)) {
                return feature;
            }
        }

        return null;
    }
}
