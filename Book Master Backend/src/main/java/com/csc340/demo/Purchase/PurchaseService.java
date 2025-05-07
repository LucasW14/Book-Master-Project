package com.csc340.demo.Purchase;


import com.csc340.demo.Book.Book;
import com.csc340.demo.User.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class PurchaseService {

    @Autowired
    private PurchaseRepository purchaseRepository;

    public List<Purchase> getAllPurchases() {
        return purchaseRepository.findAll();
    }

    public Optional<Purchase> getPurchaseById(int id) {
        return purchaseRepository.findById(id);
    }

    public List<Purchase> getPurchasesByBuyer(User buyer) {
        return purchaseRepository.findByBuyer(buyer);
    }

    public List<Purchase> getPurchasesByBook(Book book) {
        return purchaseRepository.findByBook(book);
    }

    public Purchase createPurchase(User buyer, Book book, int quantity) {
        double total = book.getBookPrice() * quantity;
        Purchase purchase = new Purchase(buyer, book, new Date(), quantity, total);
        return purchaseRepository.save(purchase);
    }

    public void deletePurchase(int id) {
        purchaseRepository.deleteById(id);
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

