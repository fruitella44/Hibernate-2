package com.fruitella.movie.session;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class MovieSessionFactory {
    //TODO SingleTon sessionFactory for refactoring
    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            Configuration configuration = new Configuration();
            configuration.addPackage("com.fruitella.movie.entity");
            configuration.configure();
            return configuration.buildSessionFactory();
        } catch (Throwable exception) {
            System.err.println("Initial SessionFactory creation failed." + exception);
            throw new ExceptionInInitializerError(exception);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        sessionFactory.close();
    }
}
