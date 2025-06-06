package com.csc340.demo.Subscription;

import com.csc340.demo.User.User;
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "subscriptions")
public class Subscription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User userId;

    @Column(nullable = false)
    private String plan; // Example: "Monthly", "Yearly"

    @Column(nullable = false)
    private LocalDateTime startDate = LocalDateTime.now();

    private LocalDateTime endDate;

    @Column(nullable = false)
    private String status; // Example: "Active", "Inactive", "Cancelled"

    public Subscription() {}

    public Subscription(User userId, String plan, LocalDateTime endDate, String status) {
        this.userId = userId;
        this.plan = plan;
        this.endDate = endDate;
        this.status = status;
    }

    // Getters
    public Long getId() {
        return id;
    }

    public User getUserId() {
        return userId;
    }

    public String getPlan() {
        return plan;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public String getStatus() {
        return status;
    }

    // Setters
    public void setId(Long id) {
        this.id = id;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

