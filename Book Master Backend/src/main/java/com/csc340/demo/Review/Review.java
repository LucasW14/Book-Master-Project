package com.csc340.demo.Review;
// Declares this class is part of the 'Review' package.

import jakarta.persistence.*;
// Imports JPA annotations needed to map this class to a database table.

import java.time.LocalDateTime;
// Imports LocalDateTime to store the timestamp of when a review was created.

@Entity
@Table(name = "reviews")
// Marks this class as a JPA entity, and maps it to the 'reviews' table in the database.
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    // Primary key with auto-increment strategy.

    @Column(nullable = false)
    private String content;
    // Review text/content. Cannot be null.

    @Column(nullable = false)
    private int rating;
    // Rating given in the review (e.g., 1 to 5 stars). Cannot be null.

    @Column(nullable = false)
    private Long userId;
    // The ID of the user who wrote the review. Cannot be null.

    @Column(nullable = false)
    private Long bookId;
    // The ID of the book being reviewed. Cannot be null.

    private final LocalDateTime createdAt = LocalDateTime.now();
    // Timestamp for when the review is created. Initialized once and final (not changeable).

    public Review() {
        // Default constructor required by JPA.
    }

    public Review(String content, int rating, Long userId, Long bookId) {
        this.content = content;
        this.rating = rating;
        this.userId = userId;
        this.bookId = bookId;
    }
    // Parameterized constructor to create a new review with all necessary fields.

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getBookId() {
        return bookId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
    // Only a getter for createdAt since it’s final and should not be changed.
}
