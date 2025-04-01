package com.csc340.demo.Reply;

import com.csc340.demo.Book.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class ReplyService {

    @Autowired
    private ReplyRepository replyRepository;


    public List<Reply> getAllReply() {

        return replyRepository.findAll();
    }


    public Reply getReplyById(int replyId) {

        return replyRepository.findById(replyId).orElse(null);
    }

    public List<Reply> getReplyByReviewId(int reviewId) {


        return replyRepository.getReplyByReviewId(reviewId);
    }

    public long countReply(int userId) {

        return replyRepository.countReply(userId);


    }

    public void addNewReply(Reply reply) {

        replyRepository.save(reply);

    }

    public void updateReply(int replyId, Reply reply) {
        Reply existing = getReplyById(replyId);
        existing.setUserId(reply.getUserId());
        existing.setReviewId(reply.getReviewId());
        existing.setDesc(reply.getDesc());
        existing.setDateMade(reply.getDateMade());


        replyRepository.save(reply);


    }


    public void deleteReplyById(int replyId){

        replyRepository.deleteById(replyId);


    }





}