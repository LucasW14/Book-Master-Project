package com.csc340.demo.Purchase;

import com.csc340.demo.User.User;
import com.csc340.demo.Book.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Integer> {
    List<Purchase> findByBuyer(User buyer);
    List<Purchase> findByBook(Book book);
}
