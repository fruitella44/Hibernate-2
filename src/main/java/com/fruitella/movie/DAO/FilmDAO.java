package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Film;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class FilmDAO extends GenericDAO<Film> {

    public FilmDAO(SessionFactory sessionFactory) {
        super(Film.class, sessionFactory);
    }
}
