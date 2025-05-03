package com.example.demo;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bookId;

    @Column(nullable = false)
    private String bookTitle;

    @Column(nullable = false)
    private String author;

    @Column(nullable = false)
    private String genre;

    @Temporal(TemporalType.DATE)
    @Column(nullable = false)
    private Date publishDate;

    @Column(nullable = false)
    private Double bookPrice;

    @Column(nullable = false)
    private int bookQuantity;

    @ManyToOne
    @JoinColumn(name = "user_Id", nullable = false)
    private User sellerId;

    // Getters and Setters
    public int getBookId() { return bookId; }
    public void setBookId(int bookId) { this.bookId = bookId; }

    public String getBookTitle() { return bookTitle; }
    public void setBookTitle(String bookTitle) { this.bookTitle = bookTitle; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public Date getPublishDate() { return publishDate; }
    public void setPublishDate(Date publishDate) { this.publishDate = publishDate; }

    public Double getBookPrice() { return bookPrice; }
    public void setBookPrice(Double bookPrice) { this.bookPrice = bookPrice; }

    public int getBookQuantity() { return bookQuantity; }
    public void setBookQuantity(int bookQuantity) { this.bookQuantity = bookQuantity; }

    public User getSellerId() { return sellerId; }
    public void setSellerId(User sellerId) { this.sellerId = sellerId; }
}
