package com.csc340.demo.Review;
// This sets the package location of the file. It helps organize your code into logical folders.

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
// Provides a container object which may or may not contain a non-null Review object,
// helping avoid null pointer exceptions.

@RestController
@RequestMapping("/api/reviews")
// @RestController tells Spring that this class will handle RESTful web requests.
// @RequestMapping sets the base path for all endpoints inside this controller.
public class ReviewController {

    private final ReviewService reviewService;
    // Declares a service class that contains the business logic for managing reviews.

    public ReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }
    // Constructor-based dependency injection:
    // Spring automatically injects a ReviewService object here.

    @GetMapping
    public List<Review> getAllReviews() {
        return reviewService.getAllReviews();
    }
    // Handles GET requests to /api/reviews.
    // It calls the service method to return a list of all reviews.

    @GetMapping("/{id}")
    public ResponseEntity<Review> getReviewById(@PathVariable Long id) {
        Optional<Review> review = reviewService.getReviewById(id);
        return review.map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }
    // Handles GET requests to /api/reviews/{id}.
    // Uses Optional to safely return 200 OK with the review, or 404 Not Found if it doesn't exist.

    @GetMapping("/book/{bookId}")
    public List<Review> getReviewsByBookId(@PathVariable Long bookId) {
        return reviewService.getReviewsByBookId(bookId);
    }
    // GET /api/reviews/book/{bookId}
    // Returns all reviews linked to a specific book using the book’s ID.

    @PostMapping
    public Review createReview(@RequestBody Review review) {
        return reviewService.addReview(review);
    }
    // Handles POST requests to /api/reviews.
    // Accepts a JSON review in the request body and passes it to the service to be saved in the database.

    @PutMapping("/{id}")
    public ResponseEntity<Review> updateReview(@PathVariable Long id, @RequestBody Review review) {
        Review updatedReview = reviewService.updateReview(id, review);
        return updatedReview != null ? ResponseEntity.ok(updatedReview) : ResponseEntity.notFound().build();
    }
    // Handles PUT requests to /api/reviews/{id}.
    // Updates an existing review based on the provided ID and new data.

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteReview(@PathVariable Long id) {
        return reviewService.deleteReview(id)
                ? ResponseEntity.noContent().build()
                : ResponseEntity.notFound().build();
    }
    // Handles DELETE requests to /api/reviews/{id}.
    // If the review exists and is deleted, return 204 No Content; else return 404 Not Found.
}
