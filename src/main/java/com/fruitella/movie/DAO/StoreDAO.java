package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Store;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class StoreDAO extends GenericDAO<Store> {

    public StoreDAO(SessionFactory sessionFactory) {
        super(Store.class, sessionFactory);
    }
}
