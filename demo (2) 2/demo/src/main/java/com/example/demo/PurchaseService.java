package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class PurchaseService {

    @Autowired
    private PurchaseRepository purchaseRepository;

    public List<Purchase> getPurchasesByUser(User user) {
        return purchaseRepository.findByUserId(user);
    }

    public List<Purchase> getPurchasesBySellerId(int sellerId) {
        return purchaseRepository.findBySellerId(sellerId);
    }

    public Purchase createPurchase(Book book, int quantity, User buyer) {
        Purchase purchase = new Purchase();
        purchase.setBookId(book);
        purchase.setQuantity(quantity);
        purchase.setTotalPrice(book.getBookPrice() * quantity);
        purchase.setSellerId(book.getSellerId().getUserId());
        purchase.setUserId(buyer);
        purchase.setDatePurchased(new Date());
        return purchaseRepository.save(purchase);
    }
}
