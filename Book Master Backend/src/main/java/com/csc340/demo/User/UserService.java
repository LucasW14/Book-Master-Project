//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.csc340.demo.User;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public UserService() {
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public Optional<User> getUserById(int userId) {
        return this.userRepository.findById(userId);
    }

    public User saveUser(User user) {
        return (User)this.userRepository.save(user);
    }

    public Optional<User> updateUser(int userId, User userDetails) {
        return this.userRepository.findById(userId).map((existingUser) -> {
            existingUser.setName(userDetails.getName());
            existingUser.setEmail(userDetails.getEmail());
            existingUser.setUsername(userDetails.getUsername());
            existingUser.setPassword(userDetails.getPassword());
            existingUser.setSetType(userDetails.getSetType());
            return (User)this.userRepository.save(existingUser);
        });
    }

    public void deleteUser(int userId) {
        this.userRepository.deleteById(userId);
    }
}
