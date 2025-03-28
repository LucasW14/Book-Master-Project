package com.csc340.demo.Book;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {

    List<Book> getBooksByGenre(String genre);

    @Query(value = "select * from books b where b.bookPrice >= ?1", nativeQuery = true)
    List<Book> getBooksByPrice(double bookPrice);

    @Query(value = "select * from books b where b.name like %?1% ", nativeQuery = true)
    List<Book> getBooksByTitle(String bookTitle);

    @Query(value = "select * from books b where b.userId = ?1", nativeQuery = true)
    List<Book> getBooksBySellerId(int userId);

    @Query(value = "select * from books b where b.publishDate = ?1", nativeQuery = true)
    List<Book> getBooksByPublishDate(Date publishDate);

}
