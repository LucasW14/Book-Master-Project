package com.csc340.demo.User;

import org.springframework.beans.factory.annotation.Autowired;       // Allows Spring to inject dependencies automatically
import org.springframework.http.HttpStatus;                       // Provides HTTP status codes
import org.springframework.http.ResponseEntity;                   // Represents an HTTP response
import org.springframework.web.bind.annotation.*;                 // Contains annotations for mapping HTTP requests

import java.util.List;
import java.util.Optional;

// Marks this class as a REST controller, meaning it will handle web requests and return JSON/XML
@RestController

// Base URL mapping for all endpoints in this controller will start with /users
@RequestMapping("users")
public class UserController {

    // Injects the UserService dependency to allow access to service methods
    @Autowired
    private UserService userService;

    // GET request to /users - Returns a list of all users
    @GetMapping
    public List<User> getAllUsers() {
        return userService.getAllUsers();  // Calls service method to fetch all users
    }

    // GET request to /users/{userId} - Returns user with the specified ID
    @GetMapping("/{userId}")
    public ResponseEntity<User> getUserById(@PathVariable int userId) {
        Optional<User> user = userService.getUserById(userId);  // Tries to find the user by ID
        // If user is found, return it with 200 OK; otherwise, return 404 Not Found
        return user.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.status(HttpStatus.NOT_FOUND).build());
    }

    // POST request to /users - Creates a new user
    @PostMapping
    public ResponseEntity<User> createUser(@RequestBody User user) {
        User savedUser = userService.saveUser(user);  // Saves the new user using the service
        // Returns the saved user with HTTP status 201 Created
        return ResponseEntity.status(HttpStatus.CREATED).body(savedUser);
    }

    // PUT request to /users/{userId} - Updates an existing user
    @PutMapping("/{userId}")
    public ResponseEntity<User> updateUser(@PathVariable int userId, @RequestBody User userDetails) {
        Optional<User> updatedUser = userService.updateUser(userId, userDetails);  // Tries to update the user
        // If successful, return updated user with 200 OK; otherwise, 404 Not Found
        return updatedUser.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.status(HttpStatus.NOT_FOUND).build());
    }

    // DELETE request to /users/{userId} - Deletes a user by ID
    @DeleteMapping("/{userId}")
    public ResponseEntity<Void> deleteUser(@PathVariable int userId) {
        userService.deleteUser(userId);  // Calls service to delete the user
        // Returns 204 No Content to indicate successful deletion
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
