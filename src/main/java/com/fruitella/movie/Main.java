package com.fruitella.movie;

import com.fruitella.movie.entity.Actor;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import java.util.List;

public class Main {
    private static final String HQL = "select a.firstName from Actor a where a.firstName = :ACTOR_FIRSTNAME";
    public static void main(String[] args) {
        try (Session session = MovieSessionFactory.getSessionFactory().openSession()) {
            //Test Query
            Query<Actor> actorQuery = session.createQuery(HQL, Actor.class);
            actorQuery.setParameter("ACTOR_FIRSTNAME", "PENELOPE");

            List<Actor> actors = actorQuery.getResultList();
            actors.forEach(System.out::println);
        }
    }

}
