package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.City;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.List;


public class CityDAO extends GenericDAO<City> {

    public CityDAO(SessionFactory sessionFactory) {
        super(City.class, sessionFactory);
    }

    public City getByName(String name) {
        Query<City> cityQuery = getCurrentSession().createQuery("select c from City c where c.city = :NAME", City.class);
        cityQuery.setParameter("NAME", name);
        cityQuery.setMaxResults(1);

        return cityQuery.getSingleResult();
    }
}
