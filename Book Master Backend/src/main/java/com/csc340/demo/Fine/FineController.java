package com.csc340.demo.Fine;



import com.csc340.demo.Book.Book;
import com.csc340.demo.Book.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@Controller
@RequestMapping("/fines")
public class FineController {



    @Autowired
    private FineService fineService;

    @GetMapping("/all")
    public Object getAllfines() {
        return new ResponseEntity<>(fineService.getAllFines(), HttpStatus.OK);

    }


    @GetMapping("/{fineId}")
    public Object getAFine(@PathVariable int fineId) {
        return new ResponseEntity<>(fineService.getFineById(fineId), HttpStatus.OK);


    }

    @GetMapping("/fineprice/{finePrice}")
    public Object getFineByAmount(@PathVariable double finePrice){
        return new ResponseEntity<>(fineService.getFineByFineAmount(finePrice), HttpStatus.OK);


    }


    @GetMapping("/fineuserid/{userId}")
    public Object getUserId(@PathVariable int userId){
        return new ResponseEntity<>(fineService.findByUserID(userId), HttpStatus.OK);


    }


    @GetMapping("/finebookid/{bookId}")
    public Object getBookId(@PathVariable int bookId){
        return new ResponseEntity<>(fineService.findByBookId(bookId), HttpStatus.OK);


    }

    @GetMapping("/finedate")
    public Object getDateMade(@RequestParam(name = "date", defaultValue = "") @DateTimeFormat(pattern = "yyyy-MM-dd") Date dateMade){
        return new ResponseEntity<>(fineService.getFineByDateMade(dateMade), HttpStatus.OK);


    }

    @PostMapping("/new")
    public Object addNewFine(@RequestBody Fine fine) {
        System.out.println(fine.toString());
        fineService.addNewFine(fine);
        return new ResponseEntity<>(fineService.getAllFines(), HttpStatus.CREATED);

    }

    @PutMapping("/update/{fineId}")
    public Object updateFine(@PathVariable int fineId, @RequestBody Fine fine) {
        System.out.println(fine.toString());
        fineService.updateFine(fineId, fine);
        return new ResponseEntity<>(fineService.getAllFines(), HttpStatus.CREATED);

    }

    @DeleteMapping("/delete/{fineId}")
    public Object deleteFineById(@PathVariable int fineId) {
        fineService.deleteFinesById(fineId);
        return new ResponseEntity<>(fineService.getAllFines(), HttpStatus.OK);
    }









}
