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
    public Object getAllBooks() {
        return new ResponseEntity<>(bookService.getAllBooks(), HttpStatus.OK);

    }

    @GetMapping("/{bookId}")
    public Object getABook(@PathVariable int bookId) {
        return new ResponseEntity<>(bookService.getBookById(bookId), HttpStatus.OK);


    }

    @GetMapping("/title")
    public Object getBooksByTitle(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(bookService.getBooksByTitle(search), HttpStatus.OK);


    }

    @GetMapping("/genre")
    public Object getBooksByGenre(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(bookService.getBooksByGenre(search), HttpStatus.OK);


    }

    @GetMapping("/bookprice/{bookPrice}")
    public Object getBooksByPrice(@PathVariable double bookPrice){
        return new ResponseEntity<>(bookService.getBooksByPrice(bookPrice), HttpStatus.OK);


    }

    @PostMapping("/new")
    public Object addNewBook(@RequestBody Book book) {
        System.out.println(book.toString());
        bookService.addNewBook(book);
        return new ResponseEntity<>(bookService.getAllBooks(), HttpStatus.CREATED);

    }

    @PutMapping("/update/{bookId}")
    public Object updateBook(@PathVariable int bookId, @RequestBody Book book) {
        System.out.println(book.toString());
        bookService.updateBook(bookId, book);
        return new ResponseEntity<>(bookService.getAllBooks(), HttpStatus.CREATED);

    }

    @DeleteMapping("/delete/{bookId}")
    public Object deleteBookById(@PathVariable int bookId) {
        bookService.deleteBooksById(bookId);
        return new ResponseEntity<>(bookService.getAllBooks(), HttpStatus.OK);
    }


}
