package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Inventory;
import com.fruitella.movie.session.MovieSessionFactory;
import org.hibernate.SessionFactory;

public class InventoryDAO extends GenericDAO<Inventory> {

    public InventoryDAO(SessionFactory sessionFactory) {
        super(Inventory.class, sessionFactory);
    }
}
