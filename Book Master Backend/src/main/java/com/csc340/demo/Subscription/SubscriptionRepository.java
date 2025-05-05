package com.csc340.demo.Subscription;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SubscriptionRepository extends JpaRepository<Subscription, Long> {
    @Query(value = "select * from subscriptions s where s.user_id = ?1", nativeQuery = true)
    List<Subscription> findByUserId(long userId);
}
