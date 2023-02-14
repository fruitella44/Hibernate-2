package com.fruitella.movie.entity;

import lombok.Getter;

@Getter
public enum Features {
    TRAILERS("Trailers"),
    COMMENTARIES("Commentaries"),
    DELETED_SCENES("Deleted Scenes"),
    BEHIND_THE_SCENES("Behind the Scenes");

    private final String enumerated;

    Features(String enumerated) {
        this.enumerated = enumerated;
    }

    //    set ('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes' null)
}
