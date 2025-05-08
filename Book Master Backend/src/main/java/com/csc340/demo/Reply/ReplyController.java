package com.csc340.demo.Reply;

import java.util.*;

import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookService;
import com.csc340.demo.Review.Review;
import com.csc340.demo.Review.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.Map;

@Controller
@RequestMapping("/reply")
public class ReplyController {

    @Autowired
    private ReplyService replyService;

    @Autowired
    public ReviewService reviewService;

    @GetMapping("/all")
    public Object getAllBooks() {
        return new ResponseEntity<>(replyService.getAllReply(), HttpStatus.OK);

    }

    @GetMapping("/{replyId}")
    public Object getABook(@PathVariable int replyId) {
        return new ResponseEntity<>(replyService.getReplyById(replyId), HttpStatus.OK);


    }

    @GetMapping("/replyreview/{reviewId}")
    public Object getUserId(@PathVariable int reviewId){
        return new ResponseEntity<>(replyService.getReplyByReviewId(reviewId), HttpStatus.OK);


    }

    @GetMapping("/totalreply/{reviewId}")
    @ResponseBody
    public String getTotalReplies(@PathVariable int reviewId) {
        return "Total number of replies for this review " + reviewId + " = " + replyService.countReply(reviewId);
    }

    @GetMapping("/replyForm/{reviewId}")
    public String replyForm(@PathVariable long reviewId, Model model) {
        Optional<Review> optionalReview = reviewService.getReviewById(reviewId);
        if (optionalReview.isEmpty()) {
            return "error-page"; // or redirect
        }

        Review review = optionalReview.get();
        Reply reply = new Reply();

        model.addAttribute("reply", reply);
        model.addAttribute("title", "Add a new reply");
        model.addAttribute("review", review);
        model.addAttribute("reviewerName", review.getReviewerName());

        return "ReplyForm";
    }

    @PostMapping("/new")
    public Object addNewReply(Model model,Reply reply) {
        replyService.addNewReply(reply);
        Review review = reply.getReviewId();

        model.addAttribute("replyList", replyService.getReplyByReviewId(review.getId()));
        model.addAttribute("review", review);

        return "ReplyList";
    }

    @PutMapping("/update/{replyId}")
    public Object updateBook(@PathVariable int replyId, @RequestBody Reply reply) {
        System.out.println(reply.toString());
        replyService.updateReply(replyId, reply);
        return new ResponseEntity<>(replyService.getAllReply(), HttpStatus.CREATED);

    }

    @DeleteMapping("/delete/{replyId}")
    public Object deleteBookById(@PathVariable int replyId) {
        replyService.deleteReplyById(replyId);
        return new ResponseEntity<>(replyService.getAllReply(), HttpStatus.OK);
    }





}
