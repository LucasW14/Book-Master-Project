
//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//


package com.csc340.demo.User;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping({"/users"})
public class UserController {
    @Autowired
    private UserService userService;


    public UserController() {
    }


    @GetMapping
    public List<User> getAllUsers() {
        return this.userService.getAllUsers();
    }


    @GetMapping({"/{userId}"})
    public String getUserById(@PathVariable int userId, Model model) {
        Optional<User> user = this.userService.getUserById(userId);
        if (user.isPresent()) {
            model.addAttribute("user", user.get());
            model.addAttribute("title", ((User)user.get()).getUsername());
            return "Profile";
        } else {
            model.addAttribute("errorMessage", "User not found");
            return "error";
        }
    }


    @GetMapping({"/userForm"})
    public String showCreateForm(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("title", "Create A User");
        return "SignUp";
    }


    @PostMapping({"/new"})
    public Object createUser(User user, Model model) {
        User savedUser = this.userService.saveUser(user);
        return "redirect:/users/" + savedUser.getUserId();
    }


    @GetMapping("/update/{userId}")
    public String updateUser(@PathVariable int userId, Model model) {
        Optional<User> optionalUser = this.userService.getUserById(userId);
        if (optionalUser.isPresent()) {
            model.addAttribute("user", optionalUser.get()); //  Unwrapped here
            model.addAttribute("title", "Update user account");
            return "ModifyProfile";
        } else {
            model.addAttribute("errorMessage", "User not found");
            return "error";
        }
    }






    @PostMapping({"/update/{userId}"})
    public String updateUser(@PathVariable int userId, User user) {
        this.userService.updateUser(userId, user);
        return "redirect:/users/" + userId;
    }


    @DeleteMapping({"/{userId}"})
    public ResponseEntity<Void> deleteUser(@PathVariable int userId) {
        this.userService.deleteUser(userId);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }






    // Show user form for create or update
    @GetMapping("/form")
    public String showUserForm(@RequestParam(required = false) Integer id, Model model) {
        if (id != null) {
            Optional<User> userOpt = userService.getUserById(id);
            userOpt.ifPresent(user -> model.addAttribute("user", user));
        } else {
            model.addAttribute("user", new User());
        }
        return "user-form"; // FTL page
    }




    // Handle form submission (create or update)
    @PostMapping("/save")
    public String saveUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/users/list";
    }




    // Handle deletion
    @GetMapping("/delete/{userId}")
    public String deleteUser2(@PathVariable int userId) {
        userService.deleteUser(userId);
        return "redirect:/users/list";
    }

    @GetMapping("/list")
    public String showUserList(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "user-list"; // Only shown when /users/list is visited
    }



}
