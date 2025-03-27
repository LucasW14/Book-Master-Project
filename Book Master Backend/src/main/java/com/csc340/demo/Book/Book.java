package com.csc340.demo.Book;
import jakarta.persistence.*;

import java.util.Date;


@Entity
@Table(name = "books")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bookId;

    @Column(nullable = false)
    private String bookName;

    @Column(nullable = false)
    private String author;


    @Column(nullable = false)
    private String genre;

    @Column(nullable = false)
    private Date publishDate;

    @Column(nullable = false)
    private Double bookPrice;

    @Column(nullable = false)
    private int bookQuantity;

//    @ManyToOne
//    @JoinColumn(name = "userId")
//    private User sellerId;


    public Book(int bookId, String bookName, String author, String genre, Date publishDate, Double bookPrice, int bookQuantity){
        this.bookId = bookId;
        this.bookName = bookName;
        this.author = author;
        this.genre = genre;
        this.publishDate = publishDate;
        this.bookPrice = bookPrice;
        this.bookQuantity = bookQuantity;



    }

    public Book(String bookName, String author, String genre, Date publishDate, Double bookPrice, int bookQuantity){
        this.bookName = bookName;
        this.author = author;
        this.genre = genre;
        this.publishDate = publishDate;
        this.bookPrice = bookPrice;
        this.bookQuantity = bookQuantity;



    }

//    public Book(int bookId, String bookName, String author, String genre, Date publishDate, Double bookPrice, int bookQuantity, User sellerId){
//        this.bookId = bookId;
//        this.bookName = bookName;
//        this.author = author;
//        this.genre = genre;
//        this.publishDate = publishDate;
//        this.bookPrice = bookPrice;
//        this.bookQuantity = bookQuantity;
//        this.sellerId;
//
//
//
//    }

    Book(){

    }





}



