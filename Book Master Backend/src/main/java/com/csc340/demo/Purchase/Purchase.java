package com.csc340.demo.Purchase;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class Purchase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-generates a purchaseId
    private int purchaseId;

    private int bookId;
    private int quantity;
    private double totalPrice;
    private int sellerId;
    private int userId;

    @Temporal(TemporalType.TIMESTAMP) // Stores date and time
    private Date datePurchased;


    public Purchase() {
        this.datePurchased = new Date(); // This constructor Auto-sets the purchase date
    }

    // Second constructor (excluding purchaseId since it's auto-generated)
    public Purchase(int bookId, int quantity, double totalPrice, int sellerId, int userId) {
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

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
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

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getDatePurchased() {
        return datePurchased;
    }

    public void setDatePurchased(Date datePurchased) {
        this.datePurchased = datePurchased;
    }
}
