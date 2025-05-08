package com.csc340.demo.Admin;

import com.csc340.demo.User.User;
import com.csc340.demo.User.UserRepository;
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
    private UserRepository userRepository;

    // 1. Show login form
    @GetMapping("/login")
    public String showLoginForm() {
        return "admin-login";
    }

    // 2. Handle login submission
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

    // 3. Show dashboard
    @GetMapping("/dashboard")
    public String dashboard() {
        return "admin-dashboard";
    }

    // 4. View all users
    @GetMapping("/users")
    public String viewAllUsers(Model model) {
        List<User> users = userRepository.findAll();
        model.addAttribute("users", users);
        return "user-list";  // Refers to templates/user-list.ftlh
    }

    // 5. Logout (optional redirect or session handling)
    @GetMapping("/logout")
    public String logout() {
        // Implement logout logic if needed
        return "redirect:/admin/login";
    }
}
