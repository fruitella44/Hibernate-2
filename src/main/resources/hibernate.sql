# Hibernate:
select
    store0_.store_id as store_id1_13_,
    store0_.address_id as address_3_13_,
    store0_.last_update as last_upd2_13_,
    store0_.manager_staff_id as manager_4_13_
from
    store store0_ limit ?;
#2023-02-24 04:58:58 PM | took 7ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select store0_.store_id as store_id1_13_, store0_.address_id as address_3_13_, store0_.last_update as last_upd2_13_, store0_.manager_staff_id as manager_4_13_ from store store0_ limit ?;
select store0_.store_id as store_id1_13_, store0_.address_id as address_3_13_, store0_.last_update as last_upd2_13_, store0_.manager_staff_id as manager_4_13_ from store store0_ limit 1;
# Hibernate:
select
    address0_.address_id as address_1_1_0_,
    address0_.address as address2_1_0_,
    address0_.address2 as address3_1_0_,
    address0_.city_id as city_id8_1_0_,
    address0_.district as district4_1_0_,
    address0_.last_update as last_upd5_1_0_,
    address0_.phone as phone6_1_0_,
    address0_.postal_code as postal_c7_1_0_,
    city1_.city_id as city_id1_3_1_,
    city1_.city as city2_3_1_,
    city1_.country_id as country_4_3_1_,
    city1_.last_update as last_upd3_3_1_,
    country2_.country_id as country_1_4_2_,
    country2_.country as country2_4_2_,
    country2_.last_update as last_upd3_4_2_
from
    address address0_
        left outer join
    city city1_
    on address0_.city_id=city1_.city_id
        left outer join
    country country2_
    on city1_.country_id=country2_.country_id
where
        address0_.address_id=?;
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select address0_.address_id as address_1_1_0_, address0_.address as address2_1_0_, address0_.address2 as address3_1_0_, address0_.city_id as city_id8_1_0_, address0_.district as district4_1_0_, address0_.last_update as last_upd5_1_0_, address0_.phone as phone6_1_0_, address0_.postal_code as postal_c7_1_0_, city1_.city_id as city_id1_3_1_, city1_.city as city2_3_1_, city1_.country_id as country_4_3_1_, city1_.last_update as last_upd3_3_1_, country2_.country_id as country_1_4_2_, country2_.country as country2_4_2_, country2_.last_update as last_upd3_4_2_ from address address0_ left outer join city city1_ on address0_.city_id=city1_.city_id left outer join country country2_ on city1_.country_id=country2_.country_id where address0_.address_id=?;
select address0_.address_id as address_1_1_0_, address0_.address as address2_1_0_, address0_.address2 as address3_1_0_, address0_.city_id as city_id8_1_0_, address0_.district as district4_1_0_, address0_.last_update as last_upd5_1_0_, address0_.phone as phone6_1_0_, address0_.postal_code as postal_c7_1_0_, city1_.city_id as city_id1_3_1_, city1_.city as city2_3_1_, city1_.country_id as country_4_3_1_, city1_.last_update as last_upd3_3_1_, country2_.country_id as country_1_4_2_, country2_.country as country2_4_2_, country2_.last_update as last_upd3_4_2_ from address address0_ left outer join city city1_ on address0_.city_id=city1_.city_id left outer join country country2_ on city1_.country_id=country2_.country_id where address0_.address_id=1;
# Hibernate:
select
    staff0_.staff_id as staff_id1_12_0_,
    staff0_.active as active2_12_0_,
    staff0_.address_id as address10_12_0_,
    staff0_.email as email3_12_0_,
    staff0_.first_name as first_na4_12_0_,
    staff0_.last_update as last_upd5_12_0_,
    staff0_.last_name as last_nam6_12_0_,
    staff0_.password as password7_12_0_,
    staff0_.picture as picture8_12_0_,
    staff0_.store_id as store_i11_12_0_,
    staff0_.username as username9_12_0_,
    address1_.address_id as address_1_1_1_,
    address1_.address as address2_1_1_,
    address1_.address2 as address3_1_1_,
    address1_.city_id as city_id8_1_1_,
    address1_.district as district4_1_1_,
    address1_.last_update as last_upd5_1_1_,
    address1_.phone as phone6_1_1_,
    address1_.postal_code as postal_c7_1_1_,
    city2_.city_id as city_id1_3_2_,
    city2_.city as city2_3_2_,
    city2_.country_id as country_4_3_2_,
    city2_.last_update as last_upd3_3_2_,
    store3_.store_id as store_id1_13_3_,
    store3_.address_id as address_3_13_3_,
    store3_.last_update as last_upd2_13_3_,
    store3_.manager_staff_id as manager_4_13_3_,
    address4_.address_id as address_1_1_4_,
    address4_.address as address2_1_4_,
    address4_.address2 as address3_1_4_,
    address4_.city_id as city_id8_1_4_,
    address4_.district as district4_1_4_,
    address4_.last_update as last_upd5_1_4_,
    address4_.phone as phone6_1_4_,
    address4_.postal_code as postal_c7_1_4_,
    staff5_.staff_id as staff_id1_12_5_,
    staff5_.active as active2_12_5_,
    staff5_.address_id as address10_12_5_,
    staff5_.email as email3_12_5_,
    staff5_.first_name as first_na4_12_5_,
    staff5_.last_update as last_upd5_12_5_,
    staff5_.last_name as last_nam6_12_5_,
    staff5_.password as password7_12_5_,
    staff5_.picture as picture8_12_5_,
    staff5_.store_id as store_i11_12_5_,
    staff5_.username as username9_12_5_
from
    staff staff0_
        left outer join
    address address1_
    on staff0_.address_id=address1_.address_id
        left outer join
    city city2_
    on address1_.city_id=city2_.city_id
        left outer join
    store store3_
    on staff0_.store_id=store3_.store_id
        left outer join
    address address4_
    on store3_.address_id=address4_.address_id
        left outer join
    staff staff5_
    on store3_.manager_staff_id=staff5_.staff_id
where
        staff0_.staff_id=?;
#2023-02-24 04:58:58 PM | took 10ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select staff0_.staff_id as staff_id1_12_0_, staff0_.active as active2_12_0_, staff0_.address_id as address10_12_0_, staff0_.email as email3_12_0_, staff0_.first_name as first_na4_12_0_, staff0_.last_update as last_upd5_12_0_, staff0_.last_name as last_nam6_12_0_, staff0_.password as password7_12_0_, staff0_.picture as picture8_12_0_, staff0_.store_id as store_i11_12_0_, staff0_.username as username9_12_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from staff staff0_ left outer join address address1_ on staff0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on staff0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where staff0_.staff_id=?;
select staff0_.staff_id as staff_id1_12_0_, staff0_.active as active2_12_0_, staff0_.address_id as address10_12_0_, staff0_.email as email3_12_0_, staff0_.first_name as first_na4_12_0_, staff0_.last_update as last_upd5_12_0_, staff0_.last_name as last_nam6_12_0_, staff0_.password as password7_12_0_, staff0_.picture as picture8_12_0_, staff0_.store_id as store_i11_12_0_, staff0_.username as username9_12_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from staff staff0_ left outer join address address1_ on staff0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on staff0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where staff0_.staff_id=1;
# Hibernate:
select
    city0_.city_id as city_id1_3_,
    city0_.city as city2_3_,
    city0_.country_id as country_4_3_,
    city0_.last_update as last_upd3_3_
from
    city city0_
where
        city0_.city=? limit ?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select city0_.city_id as city_id1_3_, city0_.city as city2_3_, city0_.country_id as country_4_3_, city0_.last_update as last_upd3_3_ from city city0_ where city0_.city=? limit ?;
select city0_.city_id as city_id1_3_, city0_.city as city2_3_, city0_.country_id as country_4_3_, city0_.last_update as last_upd3_3_ from city city0_ where city0_.city='Benguela' limit 1;
# Hibernate:
select
    country0_.country_id as country_1_4_0_,
    country0_.country as country2_4_0_,
    country0_.last_update as last_upd3_4_0_
from
    country country0_
where
        country0_.country_id=?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select country0_.country_id as country_1_4_0_, country0_.country as country2_4_0_, country0_.last_update as last_upd3_4_0_ from country country0_ where country0_.country_id=?;
select country0_.country_id as country_1_4_0_, country0_.country as country2_4_0_, country0_.last_update as last_upd3_4_0_ from country country0_ where country0_.country_id=4;
# Hibernate:
insert
into
    address
(address, address2, city_id, district, last_update, phone, postal_code)
values
    (?, ?, ?, ?, ?, ?, ?);
#2023-02-24 04:58:58 PM | took 6ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into address (address, address2, city_id, district, last_update, phone, postal_code) values (?, ?, ?, ?, ?, ?, ?);
insert into address (address, address2, city_id, district, last_update, phone, postal_code) values ('Volokalamsky 15/2, apartment 36', NULL, 67, 'Moscowsky', '2023-02-24T16:58:58.525+0300', '+79801025734', '170000');
# Hibernate:
insert
into
    customer
(active, address_id, create_date, email, first_name, last_name, last_update, store_id)
values
    (?, ?, ?, ?, ?, ?, ?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into customer (active, address_id, create_date, email, first_name, last_name, last_update, store_id) values (?, ?, ?, ?, ?, ?, ?, ?);
insert into customer (active, address_id, create_date, email, first_name, last_name, last_update, store_id) values (1, 625, '2023-02-24T16:58:58.538+0300', 'zelenij24@yandex.ru', 'Alexandr', 'Darvin', '2023-02-24T16:58:58.538+0300', 1);
#2023-02-24 04:58:58 PM | took 13ms | commit | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie

;
# Hibernate:
select
    rental0_.rental_id as rental_i1_11_,
    rental0_.customer_id as customer5_11_,
    rental0_.inventory_id as inventor6_11_,
    rental0_.last_update as last_upd2_11_,
    rental0_.rental_date as rental_d3_11_,
    rental0_.return_date as return_d4_11_,
    rental0_.staff_id as staff_id7_11_
from
    rental rental0_
where
    rental0_.return_date is null limit ?;
#2023-02-24 04:58:58 PM | took 7ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select rental0_.rental_id as rental_i1_11_, rental0_.customer_id as customer5_11_, rental0_.inventory_id as inventor6_11_, rental0_.last_update as last_upd2_11_, rental0_.rental_date as rental_d3_11_, rental0_.return_date as return_d4_11_, rental0_.staff_id as staff_id7_11_ from rental rental0_ where rental0_.return_date is null limit ?;
select rental0_.rental_id as rental_i1_11_, rental0_.customer_id as customer5_11_, rental0_.inventory_id as inventor6_11_, rental0_.last_update as last_upd2_11_, rental0_.rental_date as rental_d3_11_, rental0_.return_date as return_d4_11_, rental0_.staff_id as staff_id7_11_ from rental rental0_ where rental0_.return_date is null limit 1;
# Hibernate:
select
    customer0_.customer_id as customer1_5_0_,
    customer0_.active as active2_5_0_,
    customer0_.address_id as address_8_5_0_,
    customer0_.create_date as create_d3_5_0_,
    customer0_.email as email4_5_0_,
    customer0_.first_name as first_na5_5_0_,
    customer0_.last_name as last_nam6_5_0_,
    customer0_.last_update as last_upd7_5_0_,
    customer0_.store_id as store_id9_5_0_,
    address1_.address_id as address_1_1_1_,
    address1_.address as address2_1_1_,
    address1_.address2 as address3_1_1_,
    address1_.city_id as city_id8_1_1_,
    address1_.district as district4_1_1_,
    address1_.last_update as last_upd5_1_1_,
    address1_.phone as phone6_1_1_,
    address1_.postal_code as postal_c7_1_1_,
    city2_.city_id as city_id1_3_2_,
    city2_.city as city2_3_2_,
    city2_.country_id as country_4_3_2_,
    city2_.last_update as last_upd3_3_2_,
    store3_.store_id as store_id1_13_3_,
    store3_.address_id as address_3_13_3_,
    store3_.last_update as last_upd2_13_3_,
    store3_.manager_staff_id as manager_4_13_3_,
    address4_.address_id as address_1_1_4_,
    address4_.address as address2_1_4_,
    address4_.address2 as address3_1_4_,
    address4_.city_id as city_id8_1_4_,
    address4_.district as district4_1_4_,
    address4_.last_update as last_upd5_1_4_,
    address4_.phone as phone6_1_4_,
    address4_.postal_code as postal_c7_1_4_,
    staff5_.staff_id as staff_id1_12_5_,
    staff5_.active as active2_12_5_,
    staff5_.address_id as address10_12_5_,
    staff5_.email as email3_12_5_,
    staff5_.first_name as first_na4_12_5_,
    staff5_.last_update as last_upd5_12_5_,
    staff5_.last_name as last_nam6_12_5_,
    staff5_.password as password7_12_5_,
    staff5_.picture as picture8_12_5_,
    staff5_.store_id as store_i11_12_5_,
    staff5_.username as username9_12_5_
from
    customer customer0_
        left outer join
    address address1_
    on customer0_.address_id=address1_.address_id
        left outer join
    city city2_
    on address1_.city_id=city2_.city_id
        left outer join
    store store3_
    on customer0_.store_id=store3_.store_id
        left outer join
    address address4_
    on store3_.address_id=address4_.address_id
        left outer join
    staff staff5_
    on store3_.manager_staff_id=staff5_.staff_id
where
        customer0_.customer_id=?;
#2023-02-24 04:58:58 PM | took 6ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select customer0_.customer_id as customer1_5_0_, customer0_.active as active2_5_0_, customer0_.address_id as address_8_5_0_, customer0_.create_date as create_d3_5_0_, customer0_.email as email4_5_0_, customer0_.first_name as first_na5_5_0_, customer0_.last_name as last_nam6_5_0_, customer0_.last_update as last_upd7_5_0_, customer0_.store_id as store_id9_5_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from customer customer0_ left outer join address address1_ on customer0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on customer0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where customer0_.customer_id=?;
select customer0_.customer_id as customer1_5_0_, customer0_.active as active2_5_0_, customer0_.address_id as address_8_5_0_, customer0_.create_date as create_d3_5_0_, customer0_.email as email4_5_0_, customer0_.first_name as first_na5_5_0_, customer0_.last_name as last_nam6_5_0_, customer0_.last_update as last_upd7_5_0_, customer0_.store_id as store_id9_5_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from customer customer0_ left outer join address address1_ on customer0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on customer0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where customer0_.customer_id=216;
# Hibernate:
select
    country0_.country_id as country_1_4_0_,
    country0_.country as country2_4_0_,
    country0_.last_update as last_upd3_4_0_
from
    country country0_
where
        country0_.country_id=?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select country0_.country_id as country_1_4_0_, country0_.country as country2_4_0_, country0_.last_update as last_upd3_4_0_ from country country0_ where country0_.country_id=?;
select country0_.country_id as country_1_4_0_, country0_.country as country2_4_0_, country0_.last_update as last_upd3_4_0_ from country country0_ where country0_.country_id=15;
# Hibernate:
select
    city0_.city_id as city_id1_3_0_,
    city0_.city as city2_3_0_,
    city0_.country_id as country_4_3_0_,
    city0_.last_update as last_upd3_3_0_,
    country1_.country_id as country_1_4_1_,
    country1_.country as country2_4_1_,
    country1_.last_update as last_upd3_4_1_
from
    city city0_
        left outer join
    country country1_
    on city0_.country_id=country1_.country_id
where
        city0_.city_id=?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select city0_.city_id as city_id1_3_0_, city0_.city as city2_3_0_, city0_.country_id as country_4_3_0_, city0_.last_update as last_upd3_3_0_, country1_.country_id as country_1_4_1_, country1_.country as country2_4_1_, country1_.last_update as last_upd3_4_1_ from city city0_ left outer join country country1_ on city0_.country_id=country1_.country_id where city0_.city_id=?;
select city0_.city_id as city_id1_3_0_, city0_.city as city2_3_0_, city0_.country_id as country_4_3_0_, city0_.last_update as last_upd3_3_0_, country1_.country_id as country_1_4_1_, country1_.country as country2_4_1_, country1_.last_update as last_upd3_4_1_ from city city0_ left outer join country country1_ on city0_.country_id=country1_.country_id where city0_.city_id=300;
# Hibernate:
select
    address0_.address_id as address_1_1_0_,
    address0_.address as address2_1_0_,
    address0_.address2 as address3_1_0_,
    address0_.city_id as city_id8_1_0_,
    address0_.district as district4_1_0_,
    address0_.last_update as last_upd5_1_0_,
    address0_.phone as phone6_1_0_,
    address0_.postal_code as postal_c7_1_0_,
    city1_.city_id as city_id1_3_1_,
    city1_.city as city2_3_1_,
    city1_.country_id as country_4_3_1_,
    city1_.last_update as last_upd3_3_1_,
    country2_.country_id as country_1_4_2_,
    country2_.country as country2_4_2_,
    country2_.last_update as last_upd3_4_2_
from
    address address0_
        left outer join
    city city1_
    on address0_.city_id=city1_.city_id
        left outer join
    country country2_
    on city1_.country_id=country2_.country_id
where
        address0_.address_id=?;
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select address0_.address_id as address_1_1_0_, address0_.address as address2_1_0_, address0_.address2 as address3_1_0_, address0_.city_id as city_id8_1_0_, address0_.district as district4_1_0_, address0_.last_update as last_upd5_1_0_, address0_.phone as phone6_1_0_, address0_.postal_code as postal_c7_1_0_, city1_.city_id as city_id1_3_1_, city1_.city as city2_3_1_, city1_.country_id as country_4_3_1_, city1_.last_update as last_upd3_3_1_, country2_.country_id as country_1_4_2_, country2_.country as country2_4_2_, country2_.last_update as last_upd3_4_2_ from address address0_ left outer join city city1_ on address0_.city_id=city1_.city_id left outer join country country2_ on city1_.country_id=country2_.country_id where address0_.address_id=?;
select address0_.address_id as address_1_1_0_, address0_.address as address2_1_0_, address0_.address2 as address3_1_0_, address0_.city_id as city_id8_1_0_, address0_.district as district4_1_0_, address0_.last_update as last_upd5_1_0_, address0_.phone as phone6_1_0_, address0_.postal_code as postal_c7_1_0_, city1_.city_id as city_id1_3_1_, city1_.city as city2_3_1_, city1_.country_id as country_4_3_1_, city1_.last_update as last_upd3_3_1_, country2_.country_id as country_1_4_2_, country2_.country as country2_4_2_, country2_.last_update as last_upd3_4_2_ from address address0_ left outer join city city1_ on address0_.city_id=city1_.city_id left outer join country country2_ on city1_.country_id=country2_.country_id where address0_.address_id=3;
# Hibernate:
select
    inventory0_.inventory_id as inventor1_8_0_,
    inventory0_.film_id as film_id3_8_0_,
    inventory0_.last_update as last_upd2_8_0_,
    inventory0_.store_id as store_id4_8_0_,
    film1_.film_id as film_id1_6_1_,
    film1_.description as descript2_6_1_,
    film1_.language_id as languag12_6_1_,
    film1_.last_update as last_upd3_6_1_,
    film1_.length as length4_6_1_,
    film1_.original_language_id as origina13_6_1_,
    film1_.rating as rating5_6_1_,
    film1_.release_year as release_6_6_1_,
    film1_.rental_duration as rental_d7_6_1_,
    film1_.rental_rate as rental_r8_6_1_,
    film1_.replacement_cost as replacem9_6_1_,
    film1_.special_features as special10_6_1_,
    film1_.title as title11_6_1_,
    language2_.language_id as language1_9_2_,
    language2_.last_update as last_upd2_9_2_,
    language2_.name as name3_9_2_,
    language3_.language_id as language1_9_3_,
    language3_.last_update as last_upd2_9_3_,
    language3_.name as name3_9_3_,
    store4_.store_id as store_id1_13_4_,
    store4_.address_id as address_3_13_4_,
    store4_.last_update as last_upd2_13_4_,
    store4_.manager_staff_id as manager_4_13_4_,
    address5_.address_id as address_1_1_5_,
    address5_.address as address2_1_5_,
    address5_.address2 as address3_1_5_,
    address5_.city_id as city_id8_1_5_,
    address5_.district as district4_1_5_,
    address5_.last_update as last_upd5_1_5_,
    address5_.phone as phone6_1_5_,
    address5_.postal_code as postal_c7_1_5_,
    staff6_.staff_id as staff_id1_12_6_,
    staff6_.active as active2_12_6_,
    staff6_.address_id as address10_12_6_,
    staff6_.email as email3_12_6_,
    staff6_.first_name as first_na4_12_6_,
    staff6_.last_update as last_upd5_12_6_,
    staff6_.last_name as last_nam6_12_6_,
    staff6_.password as password7_12_6_,
    staff6_.picture as picture8_12_6_,
    staff6_.store_id as store_i11_12_6_,
    staff6_.username as username9_12_6_
from
    inventory inventory0_
        left outer join
    film film1_
    on inventory0_.film_id=film1_.film_id
        left outer join
    language language2_
    on film1_.language_id=language2_.language_id
        left outer join
    language language3_
    on film1_.original_language_id=language3_.language_id
        left outer join
    store store4_
    on inventory0_.store_id=store4_.store_id
        left outer join
    address address5_
    on store4_.address_id=address5_.address_id
        left outer join
    staff staff6_
    on store4_.manager_staff_id=staff6_.staff_id
where
        inventory0_.inventory_id=?;
#2023-02-24 04:58:58 PM | took 6ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select inventory0_.inventory_id as inventor1_8_0_, inventory0_.film_id as film_id3_8_0_, inventory0_.last_update as last_upd2_8_0_, inventory0_.store_id as store_id4_8_0_, film1_.film_id as film_id1_6_1_, film1_.description as descript2_6_1_, film1_.language_id as languag12_6_1_, film1_.last_update as last_upd3_6_1_, film1_.length as length4_6_1_, film1_.original_language_id as origina13_6_1_, film1_.rating as rating5_6_1_, film1_.release_year as release_6_6_1_, film1_.rental_duration as rental_d7_6_1_, film1_.rental_rate as rental_r8_6_1_, film1_.replacement_cost as replacem9_6_1_, film1_.special_features as special10_6_1_, film1_.title as title11_6_1_, language2_.language_id as language1_9_2_, language2_.last_update as last_upd2_9_2_, language2_.name as name3_9_2_, language3_.language_id as language1_9_3_, language3_.last_update as last_upd2_9_3_, language3_.name as name3_9_3_, store4_.store_id as store_id1_13_4_, store4_.address_id as address_3_13_4_, store4_.last_update as last_upd2_13_4_, store4_.manager_staff_id as manager_4_13_4_, address5_.address_id as address_1_1_5_, address5_.address as address2_1_5_, address5_.address2 as address3_1_5_, address5_.city_id as city_id8_1_5_, address5_.district as district4_1_5_, address5_.last_update as last_upd5_1_5_, address5_.phone as phone6_1_5_, address5_.postal_code as postal_c7_1_5_, staff6_.staff_id as staff_id1_12_6_, staff6_.active as active2_12_6_, staff6_.address_id as address10_12_6_, staff6_.email as email3_12_6_, staff6_.first_name as first_na4_12_6_, staff6_.last_update as last_upd5_12_6_, staff6_.last_name as last_nam6_12_6_, staff6_.password as password7_12_6_, staff6_.picture as picture8_12_6_, staff6_.store_id as store_i11_12_6_, staff6_.username as username9_12_6_ from inventory inventory0_ left outer join film film1_ on inventory0_.film_id=film1_.film_id left outer join language language2_ on film1_.language_id=language2_.language_id left outer join language language3_ on film1_.original_language_id=language3_.language_id left outer join store store4_ on inventory0_.store_id=store4_.store_id left outer join address address5_ on store4_.address_id=address5_.address_id left outer join staff staff6_ on store4_.manager_staff_id=staff6_.staff_id where inventory0_.inventory_id=?;
select inventory0_.inventory_id as inventor1_8_0_, inventory0_.film_id as film_id3_8_0_, inventory0_.last_update as last_upd2_8_0_, inventory0_.store_id as store_id4_8_0_, film1_.film_id as film_id1_6_1_, film1_.description as descript2_6_1_, film1_.language_id as languag12_6_1_, film1_.last_update as last_upd3_6_1_, film1_.length as length4_6_1_, film1_.original_language_id as origina13_6_1_, film1_.rating as rating5_6_1_, film1_.release_year as release_6_6_1_, film1_.rental_duration as rental_d7_6_1_, film1_.rental_rate as rental_r8_6_1_, film1_.replacement_cost as replacem9_6_1_, film1_.special_features as special10_6_1_, film1_.title as title11_6_1_, language2_.language_id as language1_9_2_, language2_.last_update as last_upd2_9_2_, language2_.name as name3_9_2_, language3_.language_id as language1_9_3_, language3_.last_update as last_upd2_9_3_, language3_.name as name3_9_3_, store4_.store_id as store_id1_13_4_, store4_.address_id as address_3_13_4_, store4_.last_update as last_upd2_13_4_, store4_.manager_staff_id as manager_4_13_4_, address5_.address_id as address_1_1_5_, address5_.address as address2_1_5_, address5_.address2 as address3_1_5_, address5_.city_id as city_id8_1_5_, address5_.district as district4_1_5_, address5_.last_update as last_upd5_1_5_, address5_.phone as phone6_1_5_, address5_.postal_code as postal_c7_1_5_, staff6_.staff_id as staff_id1_12_6_, staff6_.active as active2_12_6_, staff6_.address_id as address10_12_6_, staff6_.email as email3_12_6_, staff6_.first_name as first_na4_12_6_, staff6_.last_update as last_upd5_12_6_, staff6_.last_name as last_nam6_12_6_, staff6_.password as password7_12_6_, staff6_.picture as picture8_12_6_, staff6_.store_id as store_i11_12_6_, staff6_.username as username9_12_6_ from inventory inventory0_ left outer join film film1_ on inventory0_.film_id=film1_.film_id left outer join language language2_ on film1_.language_id=language2_.language_id left outer join language language3_ on film1_.original_language_id=language3_.language_id left outer join store store4_ on inventory0_.store_id=store4_.store_id left outer join address address5_ on store4_.address_id=address5_.address_id left outer join staff staff6_ on store4_.manager_staff_id=staff6_.staff_id where inventory0_.inventory_id=4496;
# Hibernate:
select
    staff0_.staff_id as staff_id1_12_0_,
    staff0_.active as active2_12_0_,
    staff0_.address_id as address10_12_0_,
    staff0_.email as email3_12_0_,
    staff0_.first_name as first_na4_12_0_,
    staff0_.last_update as last_upd5_12_0_,
    staff0_.last_name as last_nam6_12_0_,
    staff0_.password as password7_12_0_,
    staff0_.picture as picture8_12_0_,
    staff0_.store_id as store_i11_12_0_,
    staff0_.username as username9_12_0_,
    address1_.address_id as address_1_1_1_,
    address1_.address as address2_1_1_,
    address1_.address2 as address3_1_1_,
    address1_.city_id as city_id8_1_1_,
    address1_.district as district4_1_1_,
    address1_.last_update as last_upd5_1_1_,
    address1_.phone as phone6_1_1_,
    address1_.postal_code as postal_c7_1_1_,
    city2_.city_id as city_id1_3_2_,
    city2_.city as city2_3_2_,
    city2_.country_id as country_4_3_2_,
    city2_.last_update as last_upd3_3_2_,
    store3_.store_id as store_id1_13_3_,
    store3_.address_id as address_3_13_3_,
    store3_.last_update as last_upd2_13_3_,
    store3_.manager_staff_id as manager_4_13_3_,
    address4_.address_id as address_1_1_4_,
    address4_.address as address2_1_4_,
    address4_.address2 as address3_1_4_,
    address4_.city_id as city_id8_1_4_,
    address4_.district as district4_1_4_,
    address4_.last_update as last_upd5_1_4_,
    address4_.phone as phone6_1_4_,
    address4_.postal_code as postal_c7_1_4_,
    staff5_.staff_id as staff_id1_12_5_,
    staff5_.active as active2_12_5_,
    staff5_.address_id as address10_12_5_,
    staff5_.email as email3_12_5_,
    staff5_.first_name as first_na4_12_5_,
    staff5_.last_update as last_upd5_12_5_,
    staff5_.last_name as last_nam6_12_5_,
    staff5_.password as password7_12_5_,
    staff5_.picture as picture8_12_5_,
    staff5_.store_id as store_i11_12_5_,
    staff5_.username as username9_12_5_
from
    staff staff0_
        left outer join
    address address1_
    on staff0_.address_id=address1_.address_id
        left outer join
    city city2_
    on address1_.city_id=city2_.city_id
        left outer join
    store store3_
    on staff0_.store_id=store3_.store_id
        left outer join
    address address4_
    on store3_.address_id=address4_.address_id
        left outer join
    staff staff5_
    on store3_.manager_staff_id=staff5_.staff_id
where
        staff0_.staff_id=?;
#2023-02-24 04:58:58 PM | took 7ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select staff0_.staff_id as staff_id1_12_0_, staff0_.active as active2_12_0_, staff0_.address_id as address10_12_0_, staff0_.email as email3_12_0_, staff0_.first_name as first_na4_12_0_, staff0_.last_update as last_upd5_12_0_, staff0_.last_name as last_nam6_12_0_, staff0_.password as password7_12_0_, staff0_.picture as picture8_12_0_, staff0_.store_id as store_i11_12_0_, staff0_.username as username9_12_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from staff staff0_ left outer join address address1_ on staff0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on staff0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where staff0_.staff_id=?;
select staff0_.staff_id as staff_id1_12_0_, staff0_.active as active2_12_0_, staff0_.address_id as address10_12_0_, staff0_.email as email3_12_0_, staff0_.first_name as first_na4_12_0_, staff0_.last_update as last_upd5_12_0_, staff0_.last_name as last_nam6_12_0_, staff0_.password as password7_12_0_, staff0_.picture as picture8_12_0_, staff0_.store_id as store_i11_12_0_, staff0_.username as username9_12_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from staff staff0_ left outer join address address1_ on staff0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on staff0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where staff0_.staff_id=2;
# Hibernate:
select
    country0_.country_id as country_1_4_0_,
    country0_.country as country2_4_0_,
    country0_.last_update as last_upd3_4_0_
from
    country country0_
where
        country0_.country_id=?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select country0_.country_id as country_1_4_0_, country0_.country as country2_4_0_, country0_.last_update as last_upd3_4_0_ from country country0_ where country0_.country_id=?;
select country0_.country_id as country_1_4_0_, country0_.country as country2_4_0_, country0_.last_update as last_upd3_4_0_ from country country0_ where country0_.country_id=8;
# Hibernate:
update
    rental
set
    customer_id=?,
    inventory_id=?,
    last_update=?,
    rental_date=?,
    return_date=?,
    staff_id=?
where
        rental_id=?;
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
update rental set customer_id=?, inventory_id=?, last_update=?, rental_date=?, return_date=?, staff_id=? where rental_id=?;
update rental set customer_id=216, inventory_id=4496, last_update='2023-02-24T16:58:58.657+0300', rental_date='2006-02-14T15:16:03.000+0300', return_date='2023-02-24T16:58:58.650+0300', staff_id=2 where rental_id=11676;
#2023-02-24 04:58:58 PM | took 9ms | commit | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie

;
# Hibernate:
select
    film0_.film_id as film_id1_6_,
    film0_.description as descript2_6_,
    film0_.language_id as languag12_6_,
    film0_.last_update as last_upd3_6_,
    film0_.length as length4_6_,
    film0_.original_language_id as origina13_6_,
    film0_.rating as rating5_6_,
    film0_.release_year as release_6_6_,
    film0_.rental_duration as rental_d7_6_,
    film0_.rental_rate as rental_r8_6_,
    film0_.replacement_cost as replacem9_6_,
    film0_.special_features as special10_6_,
    film0_.title as title11_6_
from
    film film0_
where
        film0_.film_id not in  (
        select
            distinct inventory1_.film_id
        from
            inventory inventory1_
    ) limit ?;
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select film0_.film_id as film_id1_6_, film0_.description as descript2_6_, film0_.language_id as languag12_6_, film0_.last_update as last_upd3_6_, film0_.length as length4_6_, film0_.original_language_id as origina13_6_, film0_.rating as rating5_6_, film0_.release_year as release_6_6_, film0_.rental_duration as rental_d7_6_, film0_.rental_rate as rental_r8_6_, film0_.replacement_cost as replacem9_6_, film0_.special_features as special10_6_, film0_.title as title11_6_ from film film0_ where film0_.film_id not in  (select distinct inventory1_.film_id from inventory inventory1_) limit ?;
select film0_.film_id as film_id1_6_, film0_.description as descript2_6_, film0_.language_id as languag12_6_, film0_.last_update as last_upd3_6_, film0_.length as length4_6_, film0_.original_language_id as origina13_6_, film0_.rating as rating5_6_, film0_.release_year as release_6_6_, film0_.rental_duration as rental_d7_6_, film0_.rental_rate as rental_r8_6_, film0_.replacement_cost as replacem9_6_, film0_.special_features as special10_6_, film0_.title as title11_6_ from film film0_ where film0_.film_id not in  (select distinct inventory1_.film_id from inventory inventory1_) limit 1;
# Hibernate:
select
    language0_.language_id as language1_9_0_,
    language0_.last_update as last_upd2_9_0_,
    language0_.name as name3_9_0_
from
    language language0_
where
        language0_.language_id=?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select language0_.language_id as language1_9_0_, language0_.last_update as last_upd2_9_0_, language0_.name as name3_9_0_ from language language0_ where language0_.language_id=?;
select language0_.language_id as language1_9_0_, language0_.last_update as last_upd2_9_0_, language0_.name as name3_9_0_ from language language0_ where language0_.language_id=1;
# Hibernate:
select
    store0_.store_id as store_id1_13_,
    store0_.address_id as address_3_13_,
    store0_.last_update as last_upd2_13_,
    store0_.manager_staff_id as manager_4_13_
from
    store store0_ limit ?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select store0_.store_id as store_id1_13_, store0_.address_id as address_3_13_, store0_.last_update as last_upd2_13_, store0_.manager_staff_id as manager_4_13_ from store store0_ limit ?;
select store0_.store_id as store_id1_13_, store0_.address_id as address_3_13_, store0_.last_update as last_upd2_13_, store0_.manager_staff_id as manager_4_13_ from store store0_ limit 1;
# Hibernate:
select
    address0_.address_id as address_1_1_0_,
    address0_.address as address2_1_0_,
    address0_.address2 as address3_1_0_,
    address0_.city_id as city_id8_1_0_,
    address0_.district as district4_1_0_,
    address0_.last_update as last_upd5_1_0_,
    address0_.phone as phone6_1_0_,
    address0_.postal_code as postal_c7_1_0_,
    city1_.city_id as city_id1_3_1_,
    city1_.city as city2_3_1_,
    city1_.country_id as country_4_3_1_,
    city1_.last_update as last_upd3_3_1_,
    country2_.country_id as country_1_4_2_,
    country2_.country as country2_4_2_,
    country2_.last_update as last_upd3_4_2_
from
    address address0_
        left outer join
    city city1_
    on address0_.city_id=city1_.city_id
        left outer join
    country country2_
    on city1_.country_id=country2_.country_id
where
        address0_.address_id=?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select address0_.address_id as address_1_1_0_, address0_.address as address2_1_0_, address0_.address2 as address3_1_0_, address0_.city_id as city_id8_1_0_, address0_.district as district4_1_0_, address0_.last_update as last_upd5_1_0_, address0_.phone as phone6_1_0_, address0_.postal_code as postal_c7_1_0_, city1_.city_id as city_id1_3_1_, city1_.city as city2_3_1_, city1_.country_id as country_4_3_1_, city1_.last_update as last_upd3_3_1_, country2_.country_id as country_1_4_2_, country2_.country as country2_4_2_, country2_.last_update as last_upd3_4_2_ from address address0_ left outer join city city1_ on address0_.city_id=city1_.city_id left outer join country country2_ on city1_.country_id=country2_.country_id where address0_.address_id=?;
select address0_.address_id as address_1_1_0_, address0_.address as address2_1_0_, address0_.address2 as address3_1_0_, address0_.city_id as city_id8_1_0_, address0_.district as district4_1_0_, address0_.last_update as last_upd5_1_0_, address0_.phone as phone6_1_0_, address0_.postal_code as postal_c7_1_0_, city1_.city_id as city_id1_3_1_, city1_.city as city2_3_1_, city1_.country_id as country_4_3_1_, city1_.last_update as last_upd3_3_1_, country2_.country_id as country_1_4_2_, country2_.country as country2_4_2_, country2_.last_update as last_upd3_4_2_ from address address0_ left outer join city city1_ on address0_.city_id=city1_.city_id left outer join country country2_ on city1_.country_id=country2_.country_id where address0_.address_id=1;
# Hibernate:
select
    staff0_.staff_id as staff_id1_12_0_,
    staff0_.active as active2_12_0_,
    staff0_.address_id as address10_12_0_,
    staff0_.email as email3_12_0_,
    staff0_.first_name as first_na4_12_0_,
    staff0_.last_update as last_upd5_12_0_,
    staff0_.last_name as last_nam6_12_0_,
    staff0_.password as password7_12_0_,
    staff0_.picture as picture8_12_0_,
    staff0_.store_id as store_i11_12_0_,
    staff0_.username as username9_12_0_,
    address1_.address_id as address_1_1_1_,
    address1_.address as address2_1_1_,
    address1_.address2 as address3_1_1_,
    address1_.city_id as city_id8_1_1_,
    address1_.district as district4_1_1_,
    address1_.last_update as last_upd5_1_1_,
    address1_.phone as phone6_1_1_,
    address1_.postal_code as postal_c7_1_1_,
    city2_.city_id as city_id1_3_2_,
    city2_.city as city2_3_2_,
    city2_.country_id as country_4_3_2_,
    city2_.last_update as last_upd3_3_2_,
    store3_.store_id as store_id1_13_3_,
    store3_.address_id as address_3_13_3_,
    store3_.last_update as last_upd2_13_3_,
    store3_.manager_staff_id as manager_4_13_3_,
    address4_.address_id as address_1_1_4_,
    address4_.address as address2_1_4_,
    address4_.address2 as address3_1_4_,
    address4_.city_id as city_id8_1_4_,
    address4_.district as district4_1_4_,
    address4_.last_update as last_upd5_1_4_,
    address4_.phone as phone6_1_4_,
    address4_.postal_code as postal_c7_1_4_,
    staff5_.staff_id as staff_id1_12_5_,
    staff5_.active as active2_12_5_,
    staff5_.address_id as address10_12_5_,
    staff5_.email as email3_12_5_,
    staff5_.first_name as first_na4_12_5_,
    staff5_.last_update as last_upd5_12_5_,
    staff5_.last_name as last_nam6_12_5_,
    staff5_.password as password7_12_5_,
    staff5_.picture as picture8_12_5_,
    staff5_.store_id as store_i11_12_5_,
    staff5_.username as username9_12_5_
from
    staff staff0_
        left outer join
    address address1_
    on staff0_.address_id=address1_.address_id
        left outer join
    city city2_
    on address1_.city_id=city2_.city_id
        left outer join
    store store3_
    on staff0_.store_id=store3_.store_id
        left outer join
    address address4_
    on store3_.address_id=address4_.address_id
        left outer join
    staff staff5_
    on store3_.manager_staff_id=staff5_.staff_id
where
        staff0_.staff_id=?;
#2023-02-24 04:58:58 PM | took 21ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select staff0_.staff_id as staff_id1_12_0_, staff0_.active as active2_12_0_, staff0_.address_id as address10_12_0_, staff0_.email as email3_12_0_, staff0_.first_name as first_na4_12_0_, staff0_.last_update as last_upd5_12_0_, staff0_.last_name as last_nam6_12_0_, staff0_.password as password7_12_0_, staff0_.picture as picture8_12_0_, staff0_.store_id as store_i11_12_0_, staff0_.username as username9_12_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from staff staff0_ left outer join address address1_ on staff0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on staff0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where staff0_.staff_id=?;
select staff0_.staff_id as staff_id1_12_0_, staff0_.active as active2_12_0_, staff0_.address_id as address10_12_0_, staff0_.email as email3_12_0_, staff0_.first_name as first_na4_12_0_, staff0_.last_update as last_upd5_12_0_, staff0_.last_name as last_nam6_12_0_, staff0_.password as password7_12_0_, staff0_.picture as picture8_12_0_, staff0_.store_id as store_i11_12_0_, staff0_.username as username9_12_0_, address1_.address_id as address_1_1_1_, address1_.address as address2_1_1_, address1_.address2 as address3_1_1_, address1_.city_id as city_id8_1_1_, address1_.district as district4_1_1_, address1_.last_update as last_upd5_1_1_, address1_.phone as phone6_1_1_, address1_.postal_code as postal_c7_1_1_, city2_.city_id as city_id1_3_2_, city2_.city as city2_3_2_, city2_.country_id as country_4_3_2_, city2_.last_update as last_upd3_3_2_, store3_.store_id as store_id1_13_3_, store3_.address_id as address_3_13_3_, store3_.last_update as last_upd2_13_3_, store3_.manager_staff_id as manager_4_13_3_, address4_.address_id as address_1_1_4_, address4_.address as address2_1_4_, address4_.address2 as address3_1_4_, address4_.city_id as city_id8_1_4_, address4_.district as district4_1_4_, address4_.last_update as last_upd5_1_4_, address4_.phone as phone6_1_4_, address4_.postal_code as postal_c7_1_4_, staff5_.staff_id as staff_id1_12_5_, staff5_.active as active2_12_5_, staff5_.address_id as address10_12_5_, staff5_.email as email3_12_5_, staff5_.first_name as first_na4_12_5_, staff5_.last_update as last_upd5_12_5_, staff5_.last_name as last_nam6_12_5_, staff5_.password as password7_12_5_, staff5_.picture as picture8_12_5_, staff5_.store_id as store_i11_12_5_, staff5_.username as username9_12_5_ from staff staff0_ left outer join address address1_ on staff0_.address_id=address1_.address_id left outer join city city2_ on address1_.city_id=city2_.city_id left outer join store store3_ on staff0_.store_id=store3_.store_id left outer join address address4_ on store3_.address_id=address4_.address_id left outer join staff staff5_ on store3_.manager_staff_id=staff5_.staff_id where staff0_.staff_id=1;
# Hibernate:
insert
into
    inventory
(film_id, last_update, store_id)
values
    (?, ?, ?);
#2023-02-24 04:58:58 PM | took 10ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into inventory (film_id, last_update, store_id) values (?, ?, ?);
insert into inventory (film_id, last_update, store_id) values (171, '2023-02-24T16:58:58.745+0300', 1);
# Hibernate:
insert
into
    rental
(customer_id, inventory_id, last_update, rental_date, return_date, staff_id)
values
    (?, ?, ?, ?, ?, ?);
#2023-02-24 04:58:58 PM | took 4ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into rental (customer_id, inventory_id, last_update, rental_date, return_date, staff_id) values (?, ?, ?, ?, ?, ?);
insert into rental (customer_id, inventory_id, last_update, rental_date, return_date, staff_id) values (619, 4592, '2023-02-24T16:58:58.758+0300', '2023-02-24T16:58:58.758+0300', NULL, 1);
# Hibernate:
insert
into
    payment
(amount, customer_id, last_update, payment_date, rental_id, staff_id)
values
    (?, ?, ?, ?, ?, ?);
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into payment (amount, customer_id, last_update, payment_date, rental_id, staff_id) values (?, ?, ?, ?, ?, ?);
insert into payment (amount, customer_id, last_update, payment_date, rental_id, staff_id) values (3E-42, 619, '2023-02-24T16:58:58.766+0300', '2023-02-24T16:58:58.766+0300', 16060, 1);
#2023-02-24 04:58:58 PM | took 18ms | commit | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie

;
# Hibernate:
select
    language0_.language_id as language1_9_,
    language0_.last_update as last_upd2_9_,
    language0_.name as name3_9_
from
    language language0_ limit ?;
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select language0_.language_id as language1_9_, language0_.last_update as last_upd2_9_, language0_.name as name3_9_ from language language0_ limit ?;
select language0_.language_id as language1_9_, language0_.last_update as last_upd2_9_, language0_.name as name3_9_ from language language0_ limit 20;
# Hibernate:
select
    category0_.category_id as category1_2_,
    category0_.last_update as last_upd2_2_,
    category0_.name as name3_2_
from
    category category0_ limit ?;
#2023-02-24 04:58:58 PM | took 11ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select category0_.category_id as category1_2_, category0_.last_update as last_upd2_2_, category0_.name as name3_2_ from category category0_ limit ?;
select category0_.category_id as category1_2_, category0_.last_update as last_upd2_2_, category0_.name as name3_2_ from category category0_ limit 5;
# Hibernate:
select
    actor0_.actor_id as actor_id1_0_,
    actor0_.first_name as first_na2_0_,
    actor0_.last_name as last_nam3_0_,
    actor0_.last_update as last_upd4_0_
from
    actor actor0_ limit ?;
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
select actor0_.actor_id as actor_id1_0_, actor0_.first_name as first_na2_0_, actor0_.last_name as last_nam3_0_, actor0_.last_update as last_upd4_0_ from actor actor0_ limit ?;
select actor0_.actor_id as actor_id1_0_, actor0_.first_name as first_na2_0_, actor0_.last_name as last_nam3_0_, actor0_.last_update as last_upd4_0_ from actor actor0_ limit 15;
# Hibernate:
insert
into
    film
(description, language_id, last_update, length, original_language_id, rating, release_year, rental_duration, rental_rate, replacement_cost, special_features, title)
values
    (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
#2023-02-24 04:58:58 PM | took 4ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film (description, language_id, last_update, length, original_language_id, rating, release_year, rental_duration, rental_rate, replacement_cost, special_features, title) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
insert into film (description, language_id, last_update, length, original_language_id, rating, release_year, rental_duration, rental_rate, replacement_cost, special_features, title) values ('Comedy', 1, '2023-02-24T16:58:58.862+0300', 93, 1, 'PG-13', 2023, 60, 10, 1, 'Trailers', 'The great Movie');
# Hibernate:
insert
into
    film_text
(description, title, film_id)
values
    (?, ?, ?);
#2023-02-24 04:58:58 PM | took 7ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_text (description, title, film_id) values (?, ?, ?);
insert into film_text (description, title, film_id) values ('Comedy', 'The great Movie', 1008);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 15);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 2);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 14);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 8);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 1);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 13);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 3);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 8ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 12);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 3ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 4);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 10);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 9);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 7);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 5);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 6);
# Hibernate:
insert
into
    film_actor
(film_id, actor_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 2ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_actor (film_id, actor_id) values (?, ?);
insert into film_actor (film_id, actor_id) values (1008, 11);
# Hibernate:
insert
into
    film_category
(film_id, category_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 6ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_category (film_id, category_id) values (?, ?);
insert into film_category (film_id, category_id) values (1008, 1);
# Hibernate:
insert
into
    film_category
(film_id, category_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 1ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_category (film_id, category_id) values (?, ?);
insert into film_category (film_id, category_id) values (1008, 5);
# Hibernate:
insert
into
    film_category
(film_id, category_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 1ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_category (film_id, category_id) values (?, ?);
insert into film_category (film_id, category_id) values (1008, 3);
# Hibernate:
insert
into
    film_category
(film_id, category_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 1ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_category (film_id, category_id) values (?, ?);
insert into film_category (film_id, category_id) values (1008, 4);
# Hibernate:
insert
into
    film_category
(film_id, category_id)
values
    (?, ?);
#2023-02-24 04:58:58 PM | took 1ms | statement | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie
insert into film_category (film_id, category_id) values (?, ?);
insert into film_category (film_id, category_id) values (1008, 2);
#2023-02-24 04:58:58 PM | took 14ms | commit | connection 0| url jdbc:p6spy:mysql://localhost:3306/movie

;