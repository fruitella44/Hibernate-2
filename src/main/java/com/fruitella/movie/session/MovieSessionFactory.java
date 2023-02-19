package com.fruitella.movie.session;

import com.fruitella.movie.entity.*;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class MovieSessionFactory {
    //TODO SingleTone sessionFactory for refactoring
    private static MovieSessionFactory instance;
    private final SessionFactory sessionFactory;


    private MovieSessionFactory() {
        sessionFactory = new Configuration()
                .addAnnotatedClass(Actor.class)
                .addAnnotatedClass(Address.class)
                .addAnnotatedClass(Category.class)
                .addAnnotatedClass(City.class)
                .addAnnotatedClass(Country.class)
                .addAnnotatedClass(Customer.class)
                .addAnnotatedClass(Film.class)
                .addAnnotatedClass(FilmText.class)
                .addAnnotatedClass(Inventory.class)
                .addAnnotatedClass(Language.class)
                .addAnnotatedClass(Payment.class)
                .addAnnotatedClass(Rental.class)
                .addAnnotatedClass(Staff.class)
                .addAnnotatedClass(Store.class)
                .configure().buildSessionFactory();
    }

    public static SessionFactory getSessionFactory() {
        if (instance == null) {
            instance = new MovieSessionFactory();
        }

        return instance.sessionFactory;
    }
}
