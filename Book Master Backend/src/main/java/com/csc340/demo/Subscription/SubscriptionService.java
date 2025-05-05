package com.csc340.demo.Subscription;


import com.csc340.demo.User.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SubscriptionService {
    private final SubscriptionRepository subscriptionRepository;

    public SubscriptionService(SubscriptionRepository subscriptionRepository) {
        this.subscriptionRepository = subscriptionRepository;
    }

    public List<Subscription> getAllSubscriptions() {
        return subscriptionRepository.findAll();
    }

    public Optional<Subscription> getSubscriptionById(Long id) {
        return subscriptionRepository.findById(id);
    }

    public List<Subscription> getSubscriptionsByUserId(long userId) {
        return subscriptionRepository.findByUserId(userId);
    }

    public Subscription addSubscription(Subscription subscription) {
        return subscriptionRepository.save(subscription);
    }

    public Subscription updateSubscription(Long id, Subscription updatedSubscription) {
        return subscriptionRepository.findById(id).map(subscription -> {
            subscription.setPlan(updatedSubscription.getPlan());
            subscription.setStatus(updatedSubscription.getStatus());
            return subscriptionRepository.save(subscription);
        }).orElse(null);
    }

    public boolean deleteSubscription(Long id) {
        if (subscriptionRepository.existsById(id)) {
            subscriptionRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
