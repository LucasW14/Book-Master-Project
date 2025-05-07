package com.csc340.demo.Purchase;

import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookService;
import com.csc340.demo.User.User;
import com.csc340.demo.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/purchase")
public class PurchaseController{

    @Autowired
    private BookService bookService;

    @Autowired
    private PurchaseService purchaseService;

    @Autowired
    private UserService userService;


    @PostMapping
    public ResponseEntity<Purchase> createPurchase(@RequestBody Purchase purchase) {
        Purchase createdPurchase = purchaseService.createPurchase(purchase);
        return ResponseEntity.status(201).body(createdPurchase);
    }

    @GetMapping("/{purchaseId}")
    public ResponseEntity<Purchase> getPurchaseById(@PathVariable int purchaseId) {
        Optional<Purchase> purchase = purchaseService.getPurchaseById(purchaseId);
        return purchase.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @GetMapping
    public List<Purchase> getAllPurchases() {
        return purchaseService.getAllPurchases();
    }

    @PostMapping("/{purchaseId}")
    public ResponseEntity<Purchase> updatePurchase(@PathVariable int purchaseId, @RequestBody Purchase updatedPurchase) {
        try {
            Purchase purchase = purchaseService.updatePurchase(purchaseId, updatedPurchase);
            return ResponseEntity.ok(purchase);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }

//    @GetMapping("/{purchaseId}")
//    public ResponseEntity<Void> deletePurchase(@PathVariable int purchaseId) {
//        purchaseService.deletePurchase(purchaseId);
//        return ResponseEntity.noContent().build();
//    }

    @GetMapping("/statsonbook/{bookId}")
    public Object getTotalPurchases(@PathVariable int bookId, Model model) {
        model.addAttribute("book", bookService.getBookById(bookId));
        model.addAttribute("purchaseAmount", purchaseService.getTotalPurchases(bookId));


        return "StatisticsForBook";
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

        return "redirect:/purchases";
    }





}
