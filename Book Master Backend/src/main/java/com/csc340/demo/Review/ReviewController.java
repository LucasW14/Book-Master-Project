package com.csc340.demo.Review;

import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    @Autowired
    BookService bookService;

    // 1. Show all reviews
    @GetMapping
    public String listReviews(Model model) {
        model.addAttribute("reviews", reviewService.getAllReviews());
        return "reviews"; // refers to reviews.ftlh
    }

    // 2. Show form to create a new review
    @GetMapping("/new")
    public String showReviewForm(Model model) {
        model.addAttribute("review", new Review()); // Empty review object for the form
        return "review-form"; // refers to review-form.ftlh
    }

    // 3. Handle form submission (create a review)
    @PostMapping
    public String createReview(@ModelAttribute Review review) {
        reviewService.addReview(review); // Save the review
        return "redirect:/reviews"; // Redirect to the list of reviews
    }

    @GetMapping("/delete/{id}")
    public String deleteReview(@PathVariable long id){
        reviewService.deleteReview(id);

        return "redirect:/reviews";
    }

    @GetMapping("/reviewonbook/{bookId}")
    public String getReviews(int bookId, Model model) {
        Book book = bookService.getBookById(bookId);

        model.addAttribute("book", book);
        model.addAttribute("reviews", reviewService.getReviewsByBookId(bookId));
        model.addAttribute("reviewCount", reviewService.countReviewsBook(bookId));


        return "BookReview";
    }

}

