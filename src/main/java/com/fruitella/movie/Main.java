package com.fruitella.movie;

import com.fruitella.movie.entity.*;
import com.fruitella.movie.repository.RepositoryDB;


public class Main {

    public static void main(String[] args) {
        RepositoryDB repositoryDB = new RepositoryDB();
        Customer customer = repositoryDB.createCustomer();
        repositoryDB.customerReturnsItemToTheStore();
        repositoryDB.customerRentsItemInventory(customer);
        repositoryDB.createdNewFilm();

    }
}
