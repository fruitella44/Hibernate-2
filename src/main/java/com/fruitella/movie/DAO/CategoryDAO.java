package com.fruitella.movie.DAO;

import com.fruitella.movie.entity.Category;
import org.hibernate.SessionFactory;

public class CategoryDAO extends GenericDAO<Category> {

    public CategoryDAO(SessionFactory sessionFactory) {
        super(Category.class, sessionFactory);
    }
}
