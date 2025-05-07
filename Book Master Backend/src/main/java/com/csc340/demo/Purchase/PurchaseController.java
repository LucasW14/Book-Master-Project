package com.csc340.demo.Purchase;

import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookService;
import com.csc340.demo.User.User;
import com.csc340.demo.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/purchases")
public class PurchaseController {

    @Autowired
    private PurchaseService purchaseService;

    @Autowired
    private UserService userService;

    @Autowired
    private BookService bookService;

    @GetMapping
    public String getAllPurchases(Model model) {
        model.addAttribute("purchaseList", purchaseService.getAllPurchases());
        model.addAttribute("title", "All Purchases");
        return "PurchaseList";
    }

    @PostMapping("/buy")
    public String buyBook(@RequestParam int buyerId,
                          @RequestParam int bookId,
                          @RequestParam int quantity,
                          Model model) {

        Optional<User> buyerOpt = userService.getUserById(buyerId);
        Book book = bookService.getBookById(bookId);

        if (buyerOpt.isEmpty() || book == null) {
            model.addAttribute("errorMessage", "Invalid buyer or book.");
            return "error";
        }

        if (book.getBookQuantity() < quantity) {
            model.addAttribute("errorMessage", "Not enough stock.");
            return "error";
        }

        book.setBookQuantity(book.getBookQuantity() - quantity);
        bookService.updateBook(bookId, book);
        purchaseService.createPurchase(buyerOpt.get(), book, quantity);

        return "redirect:/books";
    }

    @GetMapping("/{id}")
    public String getPurchase(@PathVariable int id, Model model) {
        Optional<Purchase> purchase = purchaseService.getPurchaseById(id);
        if (purchase.isPresent()) {
            model.addAttribute("purchase", purchase.get());
            model.addAttribute("title", "Purchase #" + id);
            return "PurchaseDetails";
        } else {
            model.addAttribute("errorMessage", "Purchase not found.");
            return "error";
        }
    }

    @GetMapping("/delete/{id}")
    public String deletePurchase(@PathVariable int id) {
        purchaseService.deletePurchase(id);
        return "redirect:/purchases";
    }
}
