package com.csc340.demo.Admin;

import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookService;
import com.csc340.demo.Purchase.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.service.annotation.GetExchange;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;  // Service to handle admin authentication logic

    @Autowired
    public BookService bookService;

    @Autowired
    public PurchaseService purchaseService;

    // 1. Display login page
    @GetMapping("/login")
    public String showLoginForm() {
        return "admin-login";  // Refers to admin-login.ftlh
    }

    // 2. Handle login form submission
    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model) {

        // Authenticate admin credentials
        boolean isAuthenticated = adminService.authenticateAdmin(username, password);

        if (isAuthenticated) {
            return "redirect:/admin/dashboard";  // Redirect to dashboard if login is successful
        } else {
            model.addAttribute("error", "Invalid username or password.");
            return "admin-login";  // Show error and stay on the login page
        }
    }

    // 3. Dashboard (after successful login)
    @GetMapping("/dashboard")
    public String dashboard() {
        return "admin-dashboard";  // Refers to admin-dashboard.ftlh
    }


    @GetMapping("/allbooks")
    public String showBooks(Model model) {
        List<Book> books = bookService.getAllBooks();


        model.addAttribute("books", books);
        model.addAttribute("title", "Admin Book Management");
        return "AdminBooks"; // AdminBooks.ftlh



    }


    @GetMapping("/delete/{bookId}")
    public Object deleteBookById(@PathVariable int bookId) {
        this.bookService.deleteBooksById(bookId);
        return "redirect:/admin/allbooks";
    }


}
