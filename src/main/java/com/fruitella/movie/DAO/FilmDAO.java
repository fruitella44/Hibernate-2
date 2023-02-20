package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Film;
import com.fruitella.movie.query.Queries;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class FilmDAO extends GenericDAO<Film> {

    public FilmDAO(SessionFactory sessionFactory) {
        super(Film.class, sessionFactory);
    }

    public Film getAvailableFilmForRent() {
        Query<Film> availableFilmQuery = getCurrentSession().createQuery(Queries.getAvailableFilmHql(), Film.class);
        availableFilmQuery.setMaxResults(1);
        return availableFilmQuery.getSingleResult();
    }
}
