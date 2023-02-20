package com.fruitella.movie.repository;

import com.fruitella.movie.DAO.*;
import com.fruitella.movie.entity.*;
import com.fruitella.movie.enums.Features;
import com.fruitella.movie.enums.Rating;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.Year;
import java.time.ZonedDateTime;
import java.util.HashSet;
import java.util.List;

public class RepositoryDB {
    private final SessionFactory sessionFactory;
    private final ActorDAO actorDAO;
    private final AddressDAO addressDAO;
    private final CategoryDAO categoryDAO;
    private final CityDAO cityDAO;
    private final CountryDAO countryDAO;
    private final CustomerDAO customerDAO;
    private final FilmDAO filmDAO;
    private final FilmTextDAO filmTextDAO;
    private final InventoryDAO inventoryDAO;
    private final LanguageDAO languageDAO;
    private final PaymentDAO paymentDAO;
    private final RentalDAO rentalDAO;
    private final StaffDAO staffDAO;
    private final StoreDAO storeDAO;

    public RepositoryDB() {
        sessionFactory = new Configuration()
                .addAnnotatedClass(Actor.class)
                .addAnnotatedClass(Address.class)
                .addAnnotatedClass(Category.class)
                .addAnnotatedClass(City.class)
                .addAnnotatedClass(Country.class)
                .addAnnotatedClass(Customer.class)
                .addAnnotatedClass(Film.class)
                .addAnnotatedClass(FilmText.class)
                .addAnnotatedClass(Inventory.class)
                .addAnnotatedClass(Language.class)
                .addAnnotatedClass(Payment.class)
                .addAnnotatedClass(Rental.class)
                .addAnnotatedClass(Staff.class)
                .addAnnotatedClass(Store.class)
                .configure().buildSessionFactory();
                //configuration from hibernate.cfg.xml

        actorDAO = new ActorDAO(sessionFactory);
        addressDAO = new AddressDAO(sessionFactory);
        categoryDAO = new CategoryDAO(sessionFactory);
        cityDAO = new CityDAO(sessionFactory);
        countryDAO = new CountryDAO(sessionFactory);
        customerDAO = new CustomerDAO(sessionFactory);
        filmDAO = new FilmDAO(sessionFactory);
        filmTextDAO = new FilmTextDAO(sessionFactory);
        inventoryDAO = new InventoryDAO(sessionFactory);
        languageDAO = new LanguageDAO(sessionFactory);
        paymentDAO = new PaymentDAO(sessionFactory);
        rentalDAO = new RentalDAO(sessionFactory);
        staffDAO = new StaffDAO(sessionFactory);
        storeDAO = new StoreDAO(sessionFactory);
    }

    public Customer createCustomer() {
        try (Session session = sessionFactory.getCurrentSession()) {
            Transaction transaction = session.beginTransaction();

            Store store = storeDAO.getItems(0, 1).get(0);
            City city = cityDAO.getByName("Benguela");

            Address address = new Address();
            address.setAddress("Volokalamsky 15/2, apartment 36");
            address.setDistrict("Moscowsky");
            address.setPostalCode("170000");
            address.setPhone("+79801025734");
            address.setCity(city);
            addressDAO.save(address);

            Customer customer = new Customer();
            customer.setFirstName("Alexandr");
            customer.setLastName("Darvin");
            customer.setEmail("zelenij24@yandex.ru");
            customer.setAddress(address);
            customer.setStore(store);
            customer.setActive(true);
            customerDAO.save(customer);

            transaction.commit();
            return customer;
        }
    }

    public void customerReturnsItemToTheStore() {
        try (Session session = sessionFactory.getCurrentSession()) {
            Transaction transaction = session.beginTransaction();

            Rental rental = rentalDAO.getAnyReturnItem();
            rental.setReturnDate(LocalDateTime.now());
            rentalDAO.save(rental);

            transaction.commit();
        }
    }

    public void customerRentsItemInventory(Customer customer) {
        try (Session session = sessionFactory.getCurrentSession()) {
            Transaction transaction = session.beginTransaction();

            Film film = filmDAO.getAvailableFilmForRent();
            Store store = storeDAO.getItems(0, 1).get(0);

            Inventory inventory = new Inventory();
            inventory.setFilm(film);
            inventory.setStore(store);
            inventoryDAO.save(inventory);

            Staff staff = store.getStaff();
            Rental rental = new Rental();
            rental.setCustomer(customer);
            rental.setRentalDate(LocalDateTime.now());
            rental.setInventory(inventory);
            rental.setStaff(staff);
            rentalDAO.save(rental);

            Payment payment = new Payment();
            payment.setRental(rental);
            payment.setCustomer(customer);
            payment.setStaff(staff);
            payment.setStaff(staff);
            payment.setPaymentDate(LocalDateTime.now(ZonedDateTime.now().getZone()));
            payment.setAmount(BigDecimal.valueOf(3, 42));
            paymentDAO.save(payment);

            transaction.commit();
        }
    }

    public void createdNewFilm() {
        try (Session session = sessionFactory.getCurrentSession()) {
            Transaction transaction = session.beginTransaction();

            Language language = languageDAO.getItems(0, 20).stream().unordered().findAny().get();
            List<Category> categories = categoryDAO.getItems(0, 5);
            List<Actor> actors = actorDAO.getItems(0, 15);

            Film film = new Film();
            film.setTitle("The great Movie");
            film.setDescription("Comedy");
            film.setLanguage(language);
            film.setOriginalLanguage(language);
            film.setLength((short) 93.7);
            film.setRating(Rating.PG13);
            film.setReleaseYear(Year.now());
            film.setRentalDuration((byte) 60);
            film.setRentalRate(BigDecimal.TEN);
            film.setReplacementCost(BigDecimal.ONE);
            film.setActors(new HashSet<>(actors));
            film.setCategories(new HashSet<>(categories));
            film.setSpecialFeatures(Features.TRAILERS.getSpecialFeatures());
            filmDAO.save(film);

            FilmText filmText = new FilmText();
            filmText.setId(film.getId());
            filmText.setTitle("The great Movie");
            filmText.setDescription("Comedy");
            filmText.setFilm(film);

            transaction.commit();
        }
    }

}
