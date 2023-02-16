package com.fruitella.movie.enums;


public enum Rating {
    G("G"),
    PG("PG"),
    PG13("PG-13"),
    R("R"),
    NC17("NC-17");

    private final String rate;

    Rating(String rate) {
        this.rate = rate;
    }

    public String getRate() {
        return rate;
    }

    //enum('G', 'PG', 'PG-13', 'R', 'NC-17')

}
