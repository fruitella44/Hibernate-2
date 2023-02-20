package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.FilmText;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class FilmTextDAO extends GenericDAO<FilmText> {

    public FilmTextDAO(SessionFactory sessionFactory) {
        super(FilmText.class, sessionFactory);
    }
}
