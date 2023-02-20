package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Language;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class LanguageDAO extends GenericDAO<Language> {

    public LanguageDAO(SessionFactory sessionFactory) {
        super(Language.class, sessionFactory);
    }
}
