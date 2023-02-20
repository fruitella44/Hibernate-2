package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Staff;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class StaffDAO extends GenericDAO<Staff> {

    public StaffDAO(SessionFactory sessionFactory) {
        super(Staff.class, sessionFactory);
    }
}
