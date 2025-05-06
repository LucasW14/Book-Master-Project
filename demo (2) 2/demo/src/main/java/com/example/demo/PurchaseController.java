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
    private BookService bookService;

    @Autowired
    private PurchaseService purchaseService;

    @PostMapping("/purchase")
    public String purchaseBook(@RequestParam("bookId") int bookId,
                               @RequestParam("quantity") int quantity,
                               Model model) {

        Optional<Book> optionalBook = bookService.getBookById(bookId);

        if (optionalBook.isPresent()) {
            Book book = optionalBook.get();

            if (quantity <= 0) {
                model.addAttribute("message", "Invalid quantity.");
                return "error";
            }

            if (book.getBookQuantity() >= quantity) {
                model.addAttribute("bookId", bookId);
                model.addAttribute("quantity", quantity);
                model.addAttribute("bookTitle", book.getBookTitle());
                model.addAttribute("totalPrice", book.getBookPrice() * quantity);
                return "creditCardInfo";
            } else {
                model.addAttribute("message", "Not enough stock available.");
                return "error";
            }
        } else {
            model.addAttribute("message", "Book not found.");
            return "error";
        }
    }

    @PostMapping("/submitCreditCard")
    public String submitCreditCard(@RequestParam("bookId") int bookId,
                                   @RequestParam("quantity") int quantity,
                                   @RequestParam("cardNumber") String cardNumber,
                                   @RequestParam("expiryDate") String expiryDate,
                                   @RequestParam("cvv") String cvv,
                                   Model model) {

        if (cardNumber.isEmpty() || expiryDate.isEmpty() || cvv.isEmpty()) {
            model.addAttribute("message", "Credit card information is incomplete.");
            return "error";
        }

        Optional<Book> optionalBook = bookService.getBookById(bookId);
        if (optionalBook.isPresent()) {
            Book book = optionalBook.get();

            User buyer = book.getSellerId(); // TEMP: You can later update to get actual logged-in user

            purchaseService.createPurchase(book, quantity, buyer);
            bookService.updateBookQuantity(book, quantity);

            model.addAttribute("message", "Purchase successful!");
            model.addAttribute("bookTitle", book.getBookTitle());
            model.addAttribute("quantity", quantity);
            model.addAttribute("totalPrice", book.getBookPrice() * quantity);
            return "success";
        }

        model.addAttribute("message", "Book not found.");
        return "error";
    }
}
