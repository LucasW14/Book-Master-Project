//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.csc340.demo.Book;

import com.csc340.demo.User.User;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(
        name = "books"
)
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bookId;

    @Column(nullable = false)
    private String bookTitle
            ;
    @Column(nullable = false)
    private String author;
    @Column(nullable = false)
    private String genre;

    @Column(nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishDate;

    @Column(nullable = false)
    private Double bookPrice;

    @Column(nullable = false)
    private int bookQuantity;
    @ManyToOne
    @JoinColumn(name = "user_Id")
    private User sellerId;

    @Column(nullable = false)
    private String about;


    private String bookPicture;


    public Book(int bookId, String bookName, String author, String genre, Date publishDate, Double bookPrice, int bookQuantity, String about, String bookPicturePath) {
        this.bookId = bookId;
        this.bookTitle = bookName;
        this.author = author;
        this.genre = genre;
        this.publishDate = publishDate;
        this.bookPrice = bookPrice;
        this.bookQuantity = bookQuantity;
        this.about = about;
        this.bookPicturePath = bookPicturePath;
    }

    public Book(String bookName, String author, String genre, Date publishDate, Double bookPrice, int bookQuantity, String about, String bookPicturePath) {
        this.bookTitle = bookName;
        this.author = author;
        this.genre = genre;
        this.publishDate = publishDate;
        this.bookPrice = bookPrice;
        this.bookQuantity = bookQuantity;
        this.about = about;
        this.bookPicturePath = bookPicturePath;

    }

    public Book(int bookId, String bookName, String author, String genre, Date publishDate, Double bookPrice, int bookQuantity, User sellerId, String about,String bookPicturePath ) {
        this.bookId = bookId;
        this.bookTitle = bookName;
        this.author = author;
        this.genre = genre;
        this.publishDate = publishDate;
        this.bookPrice = bookPrice;
        this.bookQuantity = bookQuantity;
        this.sellerId = sellerId;
        this.about = about;
        this.bookPicturePath = bookPicturePath;

    }

    Book() {
    }

    public int getBookId() {
        return this.bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookTitle() {
        return this.bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGenre() {
        return this.genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Date getPublishDate() {
        return this.publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public Double getBookPrice() {
        return this.bookPrice;
    }

    public void setBookPrice(double bookPrice) {
        this.bookPrice = bookPrice;
    }

    public int getBookQuantity() {
        return this.bookQuantity;
    }

    public void setBookQuantity(int bookQuantity) {
        this.bookQuantity = bookQuantity;
    }

    public User getSellerId() {
        return this.sellerId;
    }

    public void setSellerId(User sellerId) {
        this.sellerId = sellerId;
    }

    public String getAbout() {
        return this.about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getBookPicturePath() {
        return bookPicturePath;
    }

    public void setBookPicturePath(String profilePicturePath) {
        this.bookPicturePath = bookPicturePath;
    }

    @Override
    public String toString() {
        return "Book{" +
                "bookId=" + bookId +
                ", bookTitle='" + bookTitle + '\'' +
                ", author='" + author + '\'' +
                ", genre='" + genre + '\'' +
                ", publishDate=" + publishDate +
                ", bookPrice=" + bookPrice +
                ", bookQuantity=" + bookQuantity +
                ", sellerId=" + sellerId +
                ", about='" + about + '\'' +
                ", bookPicturePath='" + bookPicturePath + '\'' +
                '}';
    }
}
