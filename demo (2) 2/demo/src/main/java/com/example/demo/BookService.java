package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    public Optional<Book> getBookById(int bookId) {
        return bookRepository.findById(bookId);
    }

    public Book saveBook(Book book) {
        return bookRepository.save(book);
    }

    public List<Book> getBooksByGenre(String genre) {
        return bookRepository.findByGenre(genre);
    }

    public List<Book> getBooksBySeller(User seller) {
        return bookRepository.findBySellerId(seller);
    }

    public void updateBookQuantity(Book book, int quantity) {
        book.setBookQuantity(book.getBookQuantity() - quantity);
        bookRepository.save(book);
    }
}
