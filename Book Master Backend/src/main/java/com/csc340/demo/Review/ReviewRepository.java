


package com.csc340.demo.Review;

import com.csc340.demo.Book.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    @Query(value = "select * from reviews r where r.book_id = ?1", nativeQuery = true)
    List<Review> findByBookId(int bookId);

    @Query(value = "SELECT COUNT(*) FROM reviews WHERE book_id = :bookId", nativeQuery = true)
    long countReviews(@Param("bookId") int bookId);




}


