package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Rental;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class RentalDAO extends GenericDAO<Rental> {

    public RentalDAO(SessionFactory sessionFactory) {
        super(Rental.class, sessionFactory);
    }
}
