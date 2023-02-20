package com.fruitella.movie.query;

import lombok.Getter;
import lombok.Setter;

public class Queries {
    private static String CITY_HQL = "SELECT c FROM City c WHERE c.city = :NAME";
    private static String RENTAL_HQL = "SELECT r FROM Rental r WHERE r.returnDate IS NULL";
    private static String AVAILABLE_FILM_HQL = "SELECT f FROM Film f WHERE f.id NOT IN(SELECT DISTINCT film.id FROM Inventory)";

    public static String getCityHql() {
        return CITY_HQL;
    }

    public static void setCityHql(String cityHql) {
        CITY_HQL = cityHql;
    }

    public static String getRentalHql() {
        return RENTAL_HQL;
    }

    public static void setRentalHql(String rentalHql) {
        RENTAL_HQL = rentalHql;
    }

    public static String getAvailableFilmHql() {
        return AVAILABLE_FILM_HQL;
    }

    public static void setAvailableFilmHql(String availableFilmHql) {
        AVAILABLE_FILM_HQL = availableFilmHql;
    }
}
