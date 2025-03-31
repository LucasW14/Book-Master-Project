package com.csc340.demo.Subscription;


import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "subscriptions")
public class Subscription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private Long userId;

    @Column(nullable = false)
    private String plan; // Example: "Monthly", "Yearly"

    @Column(nullable = false)
    private LocalDateTime startDate = LocalDateTime.now();

    private LocalDateTime endDate;

    public Subscription() {}

    public Subscription(Long userId, String plan, LocalDateTime endDate) {
        this.userId = userId;
        this.plan = plan;
        this.endDate = endDate;
    }

    // Getters and Setters
}
