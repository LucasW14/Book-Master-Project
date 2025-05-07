package com.csc340.demo.Purchase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PurchaseService {

    @Autowired
    private PurchaseRepository purchaseRepository;

    public Purchase createPurchase(Purchase purchase) {
        return purchaseRepository.save(purchase);
    }

    public Optional<Purchase> getPurchaseById(int purchaseId) {
        return purchaseRepository.findById(purchaseId);
    }

    public List<Purchase> getAllPurchases() {
        return purchaseRepository.findAll();
    }

    public Purchase updatePurchase(int purchaseId, Purchase updatedPurchase) {
        return purchaseRepository.findById(purchaseId).map(existingPurchase -> {
            existingPurchase.setBook(updatedPurchase.getBook());
            existingPurchase.setQuantity(updatedPurchase.getQuantity());
            existingPurchase.setTotalPrice(updatedPurchase.getTotalPrice());
            existingPurchase.setBuyer(updatedPurchase.getBuyer());
            existingPurchase.setSellerId(updatedPurchase.getSellerId());
            existingPurchase.setPurchaseDate(updatedPurchase.getPurchaseDate());
            return purchaseRepository.save(existingPurchase);
        }).orElseThrow(() -> new RuntimeException("Purchase with" + purchaseId + "ID not found"));
    }

    public void deletePurchase(int purchaseId) {
        purchaseRepository.deleteById(purchaseId);
    }


    public long getTotalPurchases(int bookId) {
        return purchaseRepository.countPurchases(bookId);
    }

    public long getTotalBooksPurchased(int bookId){


        return purchaseRepository.countBooksPurchased(bookId);
    }

    public long getTotalPurchasesSeller(int sellerId){

        return purchaseRepository.countPurchasesSeller(sellerId);
    }

}
