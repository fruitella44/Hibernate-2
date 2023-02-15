package com.fruitella.movie.entity;

import jakarta.persistence.*;
import jdk.jfr.Timestamp;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString

@Entity
@Table(name = "staff", schema = "movie")
public class Staff {

    @Id
    @Column(name = "staff_id")
    private Byte id;

    @Column(name = "first_name", length = 45)
    private String first_name;

    @Column(name = "last_name", length = 45)
    private String last_name;

    @ManyToOne
    @JoinColumn(name = "address_id")
    private Address address;

    @Column(name = "picture")
    @Lob
    private Byte[] picture;

    @Column(name = "email", length = 50)
    private String email;

    @ManyToOne
    @JoinColumn(name = "store_id")
    private Store store;

    @Column(name = "active")
    private Byte active;

    @Column(name = "username", length = 16)
    private String username;

    @Column(name = "password", length = 40)
    private String password;

    @Column(name = "last_update")
    @Timestamp
    private LocalDateTime localDateTime;

}
