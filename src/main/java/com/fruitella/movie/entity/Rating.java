package com.fruitella.movie.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Rating {
    G("G"),
    PG("PG"),
    PG_13("PG-13"),
    R("R"),
    NC_17("PG-17");

    private final String enumerated;

//    enum('G', 'PG', 'PG-13', 'R', 'PG-17')
}
