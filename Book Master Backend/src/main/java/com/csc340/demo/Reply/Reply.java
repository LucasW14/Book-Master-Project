package com.csc340.demo.Reply;


import com.csc340.demo.Book.Book;
import com.csc340.demo.Review.Review;
import com.csc340.demo.User.User;
import jakarta.persistence.*;

import javax.management.Descriptor;
import java.time.LocalDateTime;
import java.util.*;

@Entity
@Table(name = "reply")
public class Reply {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int replyId;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User userId;

    @ManyToOne
    @JoinColumn(name = "review_id")
    private Review reviewId;

    @Column(nullable = false)
    private String desc;

    @Column(nullable = false)
    private Date dateMade;

    public Reply(int replyId, User userId, Review reviewId, String desc, Date dateMade){

        this.replyId = replyId;
        this.userId = userId;
        this.reviewId = reviewId;
        this.desc = desc;
        this.dateMade = dateMade;


    }


    public Reply(User userId, Review reviewId, String desc, Date dateMade){

        this.userId = userId;
        this.reviewId = reviewId;
        this.desc = desc;
        this.dateMade = dateMade;


    }

    public Reply(int replyId, String desc, Date dateMade){

        this.replyId = replyId;
        this.desc = desc;
        this.dateMade = dateMade;


    }

    Reply(){


    }

    public int getReplyId(){

        return replyId;
    }

    public void setReplyId(int replyId){
        this.replyId = replyId;

    }

    public User getUserId(){


        return userId;
    }

    public void setUserId(User userId){

        this.userId = userId;

    }

    public Review getReviewId(){

        return reviewId;
    }

    public void setReviewId(Review reviewId){
        this.reviewId = reviewId;

    }

    public String getDesc(){

        return desc;
    }

    public void setDesc(String desc){
        this.desc = desc;

    }

    public Date getDateMade(){

        return dateMade;
    }

    public void setDateMade(Date dateMade){
        this.dateMade = dateMade;

    }





}
