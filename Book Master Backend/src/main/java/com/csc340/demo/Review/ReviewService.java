package com.csc340.demo.Review;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ReviewService {
    private final ReviewRepository reviewRepository;

    public ReviewService(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }

    public Optional<Review> getReviewById(Long id) {
        return reviewRepository.findById(id);
    }

    public List<Review> getReviewsByBookId(int bookId) {
        return reviewRepository.findByBookId(bookId);
    }

    public Review addReview(Review review) {
        return reviewRepository.save(review);
    }

    public Review updateReview(Long id, Review updatedReview) {
        return reviewRepository.findById(id).map(review -> {
            review.setReviewerName(updatedReview.getReviewerName());
            review.setReviewText(updatedReview.getReviewText());
            review.setRating(updatedReview.getRating());
            return reviewRepository.save(review);
        }).orElse(null);
    }

    public boolean deleteReview(Long id) {
        if (reviewRepository.existsById(id)) {
            reviewRepository.deleteById(id);
            return true;
        }
        return false;
    }

    public long countReviewsBook(int bookId){


        return reviewRepository.countReviews(bookId);
    }


}
