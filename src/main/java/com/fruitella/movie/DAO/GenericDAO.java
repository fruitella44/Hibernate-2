package com.fruitella.movie.DAO;

import com.fruitella.movie.session.MovieSessionFactory;
import jakarta.persistence.Query;
import org.hibernate.Session;

import java.util.List;

public abstract class GenericDAO<T> {

    private final Class<T> clazz;

    public GenericDAO(Class<T> clazz) {
        this.clazz = clazz;
    }

    public T getByid(final int id) {
        return (T) getCurrentSession().get(clazz, id);
    }

    public List<T> getItems(int offset, int count) {
        Query query = getCurrentSession().createQuery("from " + clazz.getName(), clazz);
        query.setFirstResult(offset);
        query.setMaxResults(count);
        return query.getResultList();
    }

    public List<T> findAll() {
        return getCurrentSession().createQuery("from " + clazz.getName(), clazz).list();
    }

    public T save(final T entity) {
        getCurrentSession().saveOrUpdate(entity);
        return entity;
    }

    public T update(final T entity) {
        return (T) getCurrentSession().merge(entity);
    }

    public void delete(final T entity) {
        getCurrentSession().delete(entity);
    }

    public void deleteByid(final int entityId) {
        final T entity = getByid(entityId);
        delete(entity);
    }

    protected Session getCurrentSession() {
        return MovieSessionFactory.getSessionFactory().getCurrentSession();
    }
}
