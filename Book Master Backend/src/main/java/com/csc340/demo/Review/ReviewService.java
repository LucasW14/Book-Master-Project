package com.csc340.demo.Review;
// This declares the package location. It organizes your classes logically inside your project.

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
// Optional is used to avoid nulls and handle absent values safely.

@Service
public class ReviewService {
    // Marks this class as a service layer that handles business logic related to Review objects.

    private final ReviewRepository reviewRepository;
    // Declares the repository used to access Review data from the database.

    public ReviewService(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }
    // Constructor-based dependency injection to assign the repository. Spring injects it automatically.

    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }
    // Retrieves all reviews from the database using the built-in 'findAll()' method.

    public Optional<Review> getReviewById(Long id) {
        return reviewRepository.findById(id);
    }
    // Retrieves a specific review by its ID, wrapped in an Optional to safely handle nulls.

    public List<Review> getReviewsByBookId(Long bookId) {
        return reviewRepository.findByBookId(bookId);
    }
    // Returns a list of reviews associated with a specific book, using a custom query method.

    public Review addReview(Review review) {
        return reviewRepository.save(review);
    }
    // Saves a new review to the database. If it already has an ID, it updates it instead.

    public Review updateReview(Long id, Review updatedReview) {
        return reviewRepository.findById(id).map(review -> {
            review.setContent(updatedReview.getContent());
            review.setRating(updatedReview.getRating());
            review.setUserId(updatedReview.getUserId());
            review.setBookId(updatedReview.getBookId());
            return reviewRepository.save(review);
        }).orElse(null);
    }


    public boolean deleteReview(Long id) {
        if (reviewRepository.existsById(id)) {
            // If a review with this ID exists, delete it
            reviewRepository.deleteById(id);
            return true;
        }
        return false;
    }
    // Deletes a review if it exists and returns true; otherwise, returns false.
}
