package com.csc340.demo.Admin;

import org.springframework.stereotype.Service;

@Service
public class AdminService {

    // Hardcoded admin credentials (for demo purposes)
    private static final String ADMIN_USERNAME = "admin";
    private static final String ADMIN_PASSWORD = "password123";  // In practice, this would be encrypted

    // Method to authenticate admin
    public boolean authenticateAdmin(String username, String password) {
        return ADMIN_USERNAME.equals(username) && ADMIN_PASSWORD.equals(password);
    }
}
