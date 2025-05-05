package com.csc340.demo.User;

import org.springframework.beans.factory.annotation.Autowired;    // Enables automatic dependency injection
import org.springframework.stereotype.Service;                // Marks this class as a service component

import java.util.List;
import java.util.Optional;

// Tells Spring that this class is a service used to handle business logic
@Service
public class UserService {

    // Injects the UserRepository to allow interaction with the database
    @Autowired
    private UserRepository userRepository;

    // Fetches all users from the database
    public List<User> getAllUsers() {
        return userRepository.findAll(); // Uses built-in JPA method to retrieve all records
    }

    // Retrieves a single user by ID, if it exists
    public Optional<User> getUserById(int userId) {
        return userRepository.findById(userId); // Returns Optional which may or may not contain a user
    }

    // Saves a new user or updates an existing user if ID is set
    public User saveUser(User user) {
        return userRepository.save(user); // JPA will insert or update the record
    }

    // Updates a user if they exist in the database
    public Optional<User> updateUser(int userId, User userDetails) {
        // First, try to find the user by ID
        return userRepository.findById(userId).map(existingUser -> {
            // If found, update all fields with new data
            existingUser.setName(userDetails.getName());
            existingUser.setEmail(userDetails.getEmail());
            existingUser.setUsername(userDetails.getUsername());
            existingUser.setPassword(userDetails.getPassword());
            existingUser.setSetType(userDetails.getSetType());
            // Save the updated user back to the database
            return userRepository.save(existingUser);
        });
    }

    // Deletes a user by ID
    public void deleteUser(int userId) {
        userRepository.deleteById(userId); // Uses JPA method to delete the user record
    }
}
