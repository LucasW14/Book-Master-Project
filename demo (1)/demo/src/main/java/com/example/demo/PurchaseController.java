package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Optional;

@Controller
public class PurchaseController {

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private PurchaseRepository purchaseRepository;  // Add repository for Purchase

    @PostMapping("/purchase")
    public String purchaseBook(@RequestParam("bookId") int bookId,
                               @RequestParam("quantity") int quantity,
                               Model model) {
        Optional<Book> optionalBook = bookRepository.findById(bookId);

        if (optionalBook.isPresent()) {
            Book book = optionalBook.get();

            if (quantity <= 0) {
                model.addAttribute("message", "Invalid quantity.");
                return "error";
            }

            if (book.getBookQuantity() >= quantity) {
                // Proceed to credit card info page
                model.addAttribute("bookId", bookId);
                model.addAttribute("quantity", quantity);
                model.addAttribute("bookTitle", book.getBookTitle());
                model.addAttribute("totalPrice", book.getBookPrice() * quantity);  // Show total price
                return "creditCardInfo";  // Show the fake credit card page
            } else {
                model.addAttribute("message", "Not enough stock available.");
                return "error";
            }
        } else {
            model.addAttribute("message", "Book not found.");
            return "error";
        }
    }

    // Endpoint to handle fake credit card info
    @PostMapping("/submitCreditCard")
    public String submitCreditCard(@RequestParam("bookId") int bookId,
                                   @RequestParam("quantity") int quantity,
                                   @RequestParam("cardNumber") String cardNumber,
                                   @RequestParam("expiryDate") String expiryDate,
                                   @RequestParam("cvv") String cvv,
                                   Model model) {
        // Here, add logic for fake credit card validation if needed (no actual payment processing)
        if (cardNumber.isEmpty() || expiryDate.isEmpty() || cvv.isEmpty()) {
            model.addAttribute("message", "Credit card information is incomplete.");
            return "error";
        }

        Optional<Book> optionalBook = bookRepository.findById(bookId);
        if (optionalBook.isPresent()) {
            Book book = optionalBook.get();

            // Create Purchase object
            Purchase purchase = new Purchase();
            purchase.setBookId(book);
            purchase.setQuantity(quantity);
            purchase.setTotalPrice(book.getBookPrice() * quantity);
            purchase.setSellerId(book.getSellerId().getUserId()); // Assuming seller is a User entity
            purchase.setUserId(book.getSellerId());  // Assuming buyer is also a User
            purchase.setDatePurchased(new Date());

            // Save purchase
            purchaseRepository.save(purchase);

            // Update book quantity
            book.setBookQuantity(book.getBookQuantity() - quantity);
            bookRepository.save(book);

            model.addAttribute("message", "Purchase successful!");
            model.addAttribute("bookTitle", book.getBookTitle());
            model.addAttribute("quantity", quantity);
            model.addAttribute("totalPrice", purchase.getTotalPrice());
            return "success";
        }

        model.addAttribute("message", "Book not found.");
        return "error";
    }
}
