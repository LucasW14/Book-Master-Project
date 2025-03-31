package com.csc340.demo.Review;


import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "reviews")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String content;

    @Column(nullable = false)
    private int rating; // Example: 1-5 stars

    @Column(nullable = false)
    private Long userId; // ID of the user who submitted the review

    @Column(nullable = false)
    private Long bookId; // ID of the book being reviewed

    private final LocalDateTime createdAt = LocalDateTime.now();

    public Review() {
    }

    public Review(String content, int rating, Long userId, Long bookId) {
        this.content = content;
        this.rating = rating;
        this.userId = userId;
        this.bookId = bookId;
    }

    // Getters and Setters
}

