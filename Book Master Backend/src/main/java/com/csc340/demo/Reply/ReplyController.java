package com.csc340.demo.Reply;

import java.util.*;

import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookService;
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
    public String getTotalBooks(@PathVariable int reviewId) {
        return "Total number of books for seller " + reviewId + " = " + replyService.countReply(reviewId);
    }

    @PostMapping("/new")
    public Object addNewReply(@RequestBody Reply reply) {
        System.out.println(reply.toString());
        replyService.addNewReply(reply);
        return new ResponseEntity<>(replyService.getAllReply(), HttpStatus.CREATED);

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
