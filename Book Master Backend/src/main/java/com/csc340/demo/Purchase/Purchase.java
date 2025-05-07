package com.csc340.demo.Purchase;

import com.csc340.demo.Book.Book;
import com.csc340.demo.User.User;
import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "purchase")
public class Purchase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-generates a purchaseId
    private int purchaseId;

    @ManyToOne
    @JoinColumn(name = "book_id")
    private Book bookId;

    private int quantity;
    private double totalPrice;


    protected int sellerId;

    @ManyToOne
    @JoinColumn(name = "user_id",nullable = false)
    private User userId;

    @Temporal(TemporalType.TIMESTAMP) // Stores date and time
    private Date datePurchased;


    public Purchase() {
        this.datePurchased = new Date(); // This constructor Auto-sets the purchase date
    }

    // Second constructor (excluding purchaseId since it's auto-generated)
    public Purchase(Book bookId, int quantity, double totalPrice, int sellerId, User userId) {
        this.bookId = bookId;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.sellerId = sellerId;
        this.userId = userId;
        this.datePurchased = new Date();
    }

    // Getters and Setters
    public int getPurchaseId() {
        return purchaseId;
    }

    public Book getBookId() {
        return bookId;
    }

    public void setBookId(Book bookId) {
        this.bookId = bookId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public Date getDatePurchased() {
        return datePurchased;
    }

    public void setDatePurchased(Date datePurchased) {
        this.datePurchased = datePurchased;
    }
}
