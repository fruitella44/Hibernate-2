package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Rental;
import com.fruitella.movie.query.Queries;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class RentalDAO extends GenericDAO<Rental> {

    public RentalDAO(SessionFactory sessionFactory) {
        super(Rental.class, sessionFactory);
    }

    public Rental getAnyReturnItem() {
        Query<Rental> rentalQuery = getCurrentSession().createQuery(Queries.getRentalHql(), Rental.class);
        rentalQuery.setMaxResults(1);
        return rentalQuery.getSingleResult();
    }
}
