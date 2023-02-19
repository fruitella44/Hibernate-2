package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Actor;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class ActorDAO extends GenericDAO<Actor> {

    public ActorDAO(SessionFactory sessionFactory) {
        super(Actor.class, sessionFactory);
    }
}
