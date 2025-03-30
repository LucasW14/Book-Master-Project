package com.csc340.demo.Fine;


import com.csc340.demo.Book.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;


public interface FineRepository {


    @Query(value = "select * from fines f where f.fine_amount >= ?1", nativeQuery = true)
    List<Fine> getFineByFineAmount(double fineAmount);

    @Query(value = "select * from fines f where f.user_id = ?1", nativeQuery = true)
    List<Fine> findByUserId(int userId);

    @Query(value = "select * from fines f where f.book_id = ?1", nativeQuery = true)
    List<Fine> findByBookId(int bookId);

    @Query(value = "select * from fines f where f.date_made = ?1", nativeQuery = true)
    List<Book> getFineByDateMade(Date dateMade);









}
