package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Payment;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class PaymentDAO extends GenericDAO<Payment> {

    public PaymentDAO(SessionFactory sessionFactory) {
        super(Payment.class, sessionFactory);
    }
}
