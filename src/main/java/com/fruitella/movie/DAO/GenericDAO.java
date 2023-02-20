package com.fruitella.movie.DAO;

import jakarta.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public abstract class GenericDAO<T> {

    private final Class<T> type;
    private final SessionFactory sessionFactory;

    public GenericDAO(Class<T> clazz, SessionFactory sessionFactory) {
        this.type = clazz;
        this.sessionFactory = sessionFactory;
    }

    public T getByid(final int id) {
        return (T) getCurrentSession().get(type, id);
    }

    public List<T> getItems(int offset, int count) {
        Query query = getCurrentSession().createQuery("FROM " + type.getName(), type);
        query.setFirstResult(offset);
        query.setMaxResults(count);
        return query.getResultList();
    }

    public List<T> findAll() {
        return getCurrentSession().createQuery("FROM " + type.getName(), type).list();
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
        return sessionFactory.getCurrentSession();
    }
}
