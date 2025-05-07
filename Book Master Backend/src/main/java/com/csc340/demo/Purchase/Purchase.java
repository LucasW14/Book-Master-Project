package com.csc340.demo.Purchase;

import com.csc340.demo.Book.Book;
import com.csc340.demo.User.User;
import jakarta.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "purchases")
public class Purchase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int purchaseId;

    @ManyToOne
    @JoinColumn(name = "buyer_id", nullable = false)
    private User buyer;

    @ManyToOne
    @JoinColumn(name = "book_id", nullable = false)
    private Book book;

    @Column(nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date purchaseDate;

    @Column(nullable = false)
    private int quantity;

    @Column(nullable = false)
    private double totalPrice;

    public int sellerId;

    public Purchase() {}

    public Purchase(User buyer, Book book, Date purchaseDate, int quantity, double totalPrice,int sellerId) {
        this.buyer = buyer;
        this.book = book;
        this.purchaseDate = purchaseDate;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
    }

    // Getters and Setters
    public int getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(int purchaseId) {
        this.purchaseId = purchaseId;
    }

    public User getBuyer() {
        return buyer;
    }

    public void setBuyer(User buyer) {
        this.buyer = buyer;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
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

    public int getSellerId(){

        return sellerId;
    }

    public void setSellerId(int sellerId){

        this.sellerId = sellerId;

    }
}
