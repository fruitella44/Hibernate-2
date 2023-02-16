package com.fruitella.movie;

import com.fruitella.movie.entity.Film;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;

import javax.management.Query;
import java.util.List;

public class Main {
    private static final String HQL = "SELECT * FROM film";
    public static void main(String[] args) {
        try (Session session = MovieSessionFactory.getSessionFactory().openSession()) {
            NativeQuery<Film> filmNativeQuery = session.createNativeQuery(HQL, Film.class);

            List<Film> filmList = filmNativeQuery.list();

            for (Film films : filmList) {
                System.out.println(films);
            }
        }
    }

}
