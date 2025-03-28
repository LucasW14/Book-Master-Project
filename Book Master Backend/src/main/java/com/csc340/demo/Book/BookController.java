package com.csc340.demo.Book;

//import com.csc340.demo.team.TeamService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/books")
public class BookController {

    @Autowired
    private BookService bookService;

    @GetMapping("/all")
    public Object getAllStudents() {
        return new ResponseEntity<>(bookService.getAllBooks(), HttpStatus.OK);

    }

    @GetMapping("/{bookId}")
    public Object getASnake(@PathVariable int snakeId) {
        return new ResponseEntity<>(bookService.getBookById(snakeId), HttpStatus.OK);


    }

    @GetMapping("/title")
    public Object getBooksByTitle(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(bookService.getBooksByTitle(search), HttpStatus.OK);


    }

    @GetMapping("/genre")
    public Object getBooksByGenre(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(bookService.getBooksByGenre(search), HttpStatus.OK);


    }

    @GetMapping("/{bookPrice}")
    public Object getBooksByPrice(@PathVariable double bookPrice){
        return new ResponseEntity<>(bookService.getBooksByPrice(bookPrice), HttpStatus.OK);


    }





}
