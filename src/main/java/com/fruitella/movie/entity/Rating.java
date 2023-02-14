package com.fruitella.movie.entity;

import lombok.Getter;

@Getter
public enum Rating {
    G("G"),
    PG("PG"),
    PG_13("PG-13"),
    R("R"),
    NC_17("PG-17");

    private final String enumerated;

    Rating(String enumerated) {
        this.enumerated = enumerated;
    }
}
