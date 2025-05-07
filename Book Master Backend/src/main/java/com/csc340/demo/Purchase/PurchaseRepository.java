package com.csc340.demo.Purchase;

import com.csc340.demo.User.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Integer> {



    @Query(value = "SELECT COUNT(*) FROM purchase WHERE book_id = :bookId", nativeQuery = true)
    long countPurchases(@Param("bookId") int bookId);

    @Query(value = "SELECT COUNT(*) FROM purchase WHERE seller_id = :sellerId", nativeQuery = true)
    long countPurchasesSeller(@Param("sellerId") int sellerId);

    @Query(value = "SELECT SUM(quantity) FROM purchase WHERE book_id = :bookId", nativeQuery = true)
    Integer countBooksPurchased(@Param("bookId") int bookId);

}
