package com.fruitella.movie.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Type;
import org.hibernate.annotations.UpdateTimestamp;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.Year;
import java.util.Set;

@Getter
@Setter
@ToString
@NoArgsConstructor

@Entity
@Table(name = "film", schema = "movie")
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "film_id")
    private Short id;

    @Column(name = "title", length = 128, nullable = false)
    private String title;

    @Column(columnDefinition = "text")
    @Type(type = "text")
    private String description;

    @Column(name = "release_year", columnDefinition = "year")
    private Year releaseYear;

    @ManyToOne
    @JoinColumn(name = "language_id")
    private Language language;

    @ManyToOne
    @JoinColumn(name = "original_language_id")
    private Language originalLanguage;

    @Column(name = "rental_duration")
    private Byte rentalDuration;

    @Column(name = "rental_rate")
    private BigDecimal rentalRate;

    @Column(name = "length")
    private Short length;

    @Column(name = "replacement_cost")
    private BigDecimal replacementCost;

    @Column(columnDefinition = "enum('G', 'PG', 'PG-13', 'R', 'PG-17')")
    private Rating rating;

    @Column(name = "special_features",
            columnDefinition = "set ('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes')")
    private String specialFeatures;

    @Column(name = "last_update")
    @UpdateTimestamp
    private LocalDateTime lastUpdate;

    @ManyToMany
    @JoinTable(name = "actor",
            joinColumns = @JoinColumn(name = "film_id", referencedColumnName = "film_id"),
            inverseJoinColumns = @JoinColumn(name = "actor_id", referencedColumnName = "actor_id"))
    private Set<Actor> actors;

    @OneToOne
    @JoinColumn(name = "film_id")
    private FilmText filmText;

    @ManyToMany
    @JoinTable(name = "category",
            joinColumns = @JoinColumn(name = "film_id", referencedColumnName = "film_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id", referencedColumnName = "category_id"))
    private Set<Category> category;


}
