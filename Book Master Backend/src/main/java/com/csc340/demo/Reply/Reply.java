package com.csc340.demo.Reply;


import com.csc340.demo.Book.Book;
import com.csc340.demo.Review.Review;
import com.csc340.demo.User.User;
import jakarta.persistence.*;
import org.hibernate.annotations.CreationTimestamp;

import javax.management.Descriptor;
import java.time.LocalDateTime;
import java.util.*;


@Entity
@Table(name = "reply")
public class Reply {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int replyId;


    private int userId;

    public String replierName;

    @ManyToOne
    @JoinColumn(name = "review_id")
    private Review reviewId;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false, name = "date_Made")
    @CreationTimestamp
    private LocalDateTime dateMade;



    public Reply(int replyId, int userId, Review reviewId, String desc, LocalDateTime dateMade, String replierName){

        this.replyId = replyId;
        this.userId = userId;
        this.reviewId = reviewId;
        this.description = desc;
        this.dateMade = dateMade;
        this.replierName = replierName;

    }


    public Reply(int userId, Review reviewId, String desc, LocalDateTime dateMade, String replierName){

        this.userId = userId;
        this.reviewId = reviewId;
        this.description = desc;
        this.dateMade = dateMade;
        this.replierName = replierName;

    }

    public Reply(int replyId, String desc, LocalDateTime dateMade){

        this.replyId = replyId;
        this.description = desc;
        this.dateMade = dateMade;
        this.replierName = replierName;

    }

    Reply(){


    }

    public int getReplyId(){

        return replyId;
    }

    public void setReplyId(int replyId){
        this.replyId = replyId;

    }

    public int getUserId(){


        return userId;
    }

    public void setUserId(int userId){

        this.userId = userId;

    }

    public Review getReviewId(){

        return reviewId;
    }

    public void setReviewId(Review reviewId){
        this.reviewId = reviewId;

    }

    public String getDescription(){

        return description;
    }

    public void setDescription(String desc){
        this.description = desc;

    }

    public LocalDateTime getDateMade(){

        return dateMade;
    }

    public void setDateMade(LocalDateTime dateMade){
        this.dateMade = dateMade;

    }

    public String getReplierName() {
        return replierName;
    }

    public void setReplierName(String replierName) {
        this.replierName = replierName;
    }

}
