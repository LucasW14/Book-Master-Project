


package com.csc340.demo.Review;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    @Query(value = "select * from reviews r where r.book_id = ?1", nativeQuery = true)
    List<Review> findByBookId(Long bookId);
}


