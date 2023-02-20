package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Country;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class CountryDAO extends GenericDAO<Country>{

    public CountryDAO(SessionFactory sessionFactory) {
        super(Country.class, sessionFactory);
    }
}
