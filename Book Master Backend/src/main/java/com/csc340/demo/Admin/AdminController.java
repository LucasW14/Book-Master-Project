package com.csc340.demo.Admin;

import com.csc340.demo.User.User;
import com.csc340.demo.User.UserService;
import com.csc340.demo.Purchase.Purchase;
import com.csc340.demo.Purchase.PurchaseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private UserService userService;

    @Autowired
    private PurchaseService purchaseService;

    @GetMapping("/login")
    public String showLoginForm() {
        return "admin-login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model) {

        boolean isAuthenticated = adminService.authenticateAdmin(username, password);

        if (isAuthenticated) {
            return "redirect:/admin/dashboard";
        } else {
            model.addAttribute("error", "Invalid username or password.");
            return "admin-login";
        }
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        List<User> users = userService.getAllUsers();
        List<Purchase> purchases = purchaseService.getAllPurchases();

        model.addAttribute("users", users);
        model.addAttribute("purchases", purchases);

        return "admin-dashboard";
    }

    @GetMapping("/logout")
    public String logout() {
        return "redirect:/admin/login";
    }
}
