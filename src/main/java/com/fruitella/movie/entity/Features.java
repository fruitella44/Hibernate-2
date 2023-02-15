package com.fruitella.movie.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Features {
    TRAILERS("Trailers"),
    COMMENTARIES("Commentaries"),
    DELETED_SCENES("Deleted Scenes"),
    BEHIND_THE_SCENES("Behind the Scenes");

    private final String enumerated;

    //    set ('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes' null)
}
