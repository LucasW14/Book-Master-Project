package com.csc340.demo.Purchase;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Integer> {



    @Query(value = "SELECT COUNT(*) FROM purchase WHERE book_id = :bookId", nativeQuery = true)
    long countPurchases(@Param("bookId") int bookId);


}
