//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.csc340.demo.Book;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {
    @Autowired
    private BookRepository bookRepository;

    public BookService() {
    }

    public List<Book> getAllBooks() {
        return this.bookRepository.findAll();
    }

    public Book getBookById(int bookId) {
        return (Book)this.bookRepository.findById(bookId).orElse(null);
    }

    public List<Book> getBooksByGenre(String genre) {
        return this.bookRepository.getBooksByGenre(genre);
    }

    public List<Book> getBooksByPrice(double bookPrice) {
        return this.bookRepository.getBooksByPrice(bookPrice);
    }

    public List<Book> getBooksByTitle(String bookName) {
        return this.bookRepository.getBooksByTitle(bookName);
    }

    public List<Book> getBooksBySellerId(int userId) {
        return this.bookRepository.getBooksBySellerId(userId);
    }

    public List<Book> getBooksByPublishDate(Date publishDate) {
        return this.bookRepository.getBooksByPublishDate(publishDate);
    }

    public void addNewBook(Book book) {
        this.bookRepository.save(book);
    }

    public void updateBook(int bookId, Book book) {
        this.bookRepository.save(book);
    }

    public void deleteBooksById(int bookId) {
        this.bookRepository.deleteById(bookId);
    }

    public long getTotalBooks() {
        return this.bookRepository.countAllBooks();
    }

    public long getSellerBooks(int sellerId) {
        return this.bookRepository.countSellerBooks(sellerId);
    }
}
