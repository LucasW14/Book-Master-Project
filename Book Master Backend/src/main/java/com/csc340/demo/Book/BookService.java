package com.csc340.demo.Book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;


    public List<Book> getAllBooks() {

        return bookRepository.findAll();
    }



    public Book getBookById(int bookId) {

        return bookRepository.findById(bookId).orElse(null);
    }


    public List<Book> getBooksByGenre(String genre){

       return bookRepository.getBooksByGenre(genre);

    }

    public List<Book> getBooksByPrice(double bookPrice){

        return bookRepository.getBooksByPrice(bookPrice);

    }

    public List<Book> getBooksByTitle(String bookName){

        return bookRepository.getBooksByName(bookName);

    }


    public List<Book> getBooksBySellerId(int userId) {

        return bookRepository.getBooksBySellerId(userId);
    }


    public List<Book> getBooksByPublishDate(Date publishDate){

        return bookRepository.getBooksByPublishDate(publishDate);

    }

    public void addNewBook(Book book){

        bookRepository.save(book);
    }

    public void UpdateBook(int bookId,Book book){

        bookRepository.save(book);

    }

    public  void deleteBooksById(int bookId){

        bookRepository.deleteById(bookId);


    }

}
