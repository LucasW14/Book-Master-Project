package com.csc340.demo.Reply;

import com.csc340.demo.Book.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReplyRepository extends JpaRepository<Reply, Integer> {


    @Query(value = "select * from reply r where r.review_id = ?1", nativeQuery = true)
    List<Reply> getReplyByReviewId(long reviewId);

    @Query(value = "SELECT COUNT(*) FROM reply WHERE review_id = :reviewId", nativeQuery = true)
    long countReply(@Param("reviewId") int reviewId);




}
