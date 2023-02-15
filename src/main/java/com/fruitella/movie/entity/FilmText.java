package com.fruitella.movie.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Type;

@Getter
@Setter
@ToString
@NoArgsConstructor

@Entity
@Table(name = "film_text", schema = "movie")
public class FilmText {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "film_id")
    private Short id;

    @Column(name = "title", length = 255)
    private String title;

    @Column(columnDefinition = "text")
    @Type(type = "text")
    private String description;

}
