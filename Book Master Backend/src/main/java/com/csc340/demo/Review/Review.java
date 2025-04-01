package com.csc340.demo.Review;

import com.csc340.demo.Book.Book;
import com.csc340.demo.User.User;
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "reviews")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String reviewerName; // Name of the reviewer

    @Column(nullable = false)
    private String reviewText; // Content of the review

    @Column(nullable = false)
    private int rating; // Example: 1-5 stars

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User userId; // ID of the user who submitted the review

    @ManyToOne
    @JoinColumn(name = "book_id", nullable = false)
    private Book bookId; // ID of the book being reviewed

    private LocalDateTime createdAt = LocalDateTime.now();

    public Review() {}

    public Review(String reviewerName, String reviewText, int rating, User userId, Book bookId) {
        this.reviewerName = reviewerName;
        this.reviewText = reviewText;
        this.rating = rating;
        this.userId = userId;
        this.bookId = bookId;
        this.createdAt = LocalDateTime.now();
    }

    // Getters
    public Long getId() {
        return id;
    }

    public String getReviewerName() {
        return reviewerName;
    }

    public String getReviewText() {
        return reviewText;
    }

    public int getRating() {
        return rating;
    }

    public User getUserId() {
        return userId;
    }

    public Book getBookId() {
        return bookId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    // Setters
    public void setId(Long id) {
        this.id = id;
    }

    public void setReviewerName(String reviewerName) {
        this.reviewerName = reviewerName;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public void setBookId(Book bookId) {
        this.bookId = bookId;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}

