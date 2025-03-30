package com.csc340.demo.Fine;

import com.csc340.demo.Book.Book;
import com.csc340.demo.User.User;
import jakarta.annotation.Nullable;
import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "fines")
public class Fine {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int fineId;


    @Column(nullable = false)
    private double fineAmount;

    @ManyToOne
    @JoinColumn(name = "userId")
    @Column(nullable = false)
    private User user;

    @Column(nullable = false)
    private Date dateMade;

    @Column(nullable = false)
    private String fineDesc;

    @JoinColumn(name = "bookId")
    private Book book;

    public Fine(int fineId, double fineAmount, User user, Date dateMade, String fineDesc, Book book){

        this.fineId = fineId;
        this.fineAmount = fineAmount;
        this.user = user;
        this.dateMade = dateMade;
        this.fineDesc = fineDesc;
        this.book = book;


    }


    public Fine(int fineId, double fineAmount, Date dateMade, String fineDesc){

        this.fineId = fineId;
        this.fineAmount = fineAmount;
        this.dateMade = dateMade;
        this.fineDesc = fineDesc;


    }

    public Fine(double fineAmount, User user, Date dateMade, String fineDesc, Book book){

        this.fineAmount = fineAmount;
        this.user = user;
        this.dateMade = dateMade;
        this.fineDesc = fineDesc;
        this.book = book;


    }

    public int getFineId(){

        return fineId;


    }

    public void setFineId(int fineId){

        this.fineId = fineId;


    }

    public double getFineAmount(){

        return fineAmount;


    }

    public void setFineAmount(double fineAmount){

        this.fineAmount = fineAmount;


    }

    public User getUser(){

        return user;


    }

    public void setUser(){

        this.user = user;

    }

    public Date getDateMade(){


        return dateMade;

    }

    public void setDateMade(Date dateMade){

        this.dateMade = dateMade;

    }

    public String getFineDesc(){

        return fineDesc;

    }

    public void setFineDesc(){

        this.fineDesc = fineDesc;

    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
}
