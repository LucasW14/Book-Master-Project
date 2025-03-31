package com.csc340.demo.Fine;


import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class FineService {

    @Autowired
    private FineRepository fineRepository;

    public List<Fine> getAllFines() {

        return fineRepository.findAll();
    }

    public Fine getFineById(int fineId) {

        return fineRepository.findById(fineId).orElse(null);
    }

    public List<Fine> getFineByFineAmount(double fineAmount){

        return fineRepository.getFineByFineAmount(fineAmount);


    }

    public List<Fine> findByUserID(int userId){

        return fineRepository.findByUserId(userId);


    }

    public List<Fine> findByBookId(int bookId){

        return fineRepository.findByBookId(bookId);


    }


    public List<Fine> getFineByDateMade(Date dateMade){

        return fineRepository.getFineByDateMade(dateMade);


    }


    public void addNewFine(Fine fine){

        fineRepository.save(fine);
    }


    public void updateFine(int fineId,Fine fine){
        Fine existing = getFineById(fineId);
        existing.setFineAmount(fine.getFineAmount());
        existing.setUser(fine.getUser());
        existing.setDateMade(fine.getDateMade());
        existing.setFineDesc(fine.getFineDesc());
        existing.setBook(fine.getBook());


        fineRepository.save(fine);

    }


    public  void deleteFinesById(int fineId){

        fineRepository.deleteById(fineId);


    }




}
