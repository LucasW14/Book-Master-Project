package com.csc340.demo.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;  // Service to handle admin authentication logic

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
}
