//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.csc340.demo.Book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {
    @Autowired
    private BookService bookService;

    int sellerId;

    public BookController() {
    }

    @GetMapping("/all")
    public String showBooks(Model model) {
        List<Book> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        return "BookStore"; // bookstore.ftlh
    }
   @GetMapping("/search")
 public String searchBooks(@RequestParam("keyword") String keyword, Model model) {
      List<Book> books = BookRepository.findByBookTitleContainingIgnoreCase(keyword);
   model.addAttribute("books", books);
 model.addAttribute("search", keyword); // to keep the search keyword in the input
return "bookstore";
  }

//    @GetMapping("/all")
//    public Object getAllBooks(Model model) {
//        model.addAttribute("bookList", bookService.getAllBooks());
//        model.addAttribute("title", "All books");
//        return "MyBookStore";
//    }

    @GetMapping("/{bookId}")
    public Object getABook(@PathVariable int bookId, Model model) {
        model.addAttribute("book", bookService.getBookById(bookId));
        model.addAttribute("title", "Book #: " + bookId);
        return "BookProfile";
    }

    @GetMapping("/title")
    public Object getBooksByTitle(@RequestParam(name = "search",defaultValue = "") String search, Model model) {
        model.addAttribute("books", bookService.getBooksByTitle(search));
        model.addAttribute("title", "Books by Name: " + search);
        return "BookStore";
    }

    @GetMapping("/genre")
    public Object getBooksByGenre(@RequestParam(name = "search",defaultValue = "") String search) {
        return new ResponseEntity(this.bookService.getBooksByGenre(search), HttpStatus.OK);
    }

    @GetMapping("/bookprice/{bookPrice}")
    public Object getBooksByPrice(@PathVariable double bookPrice) {
        return new ResponseEntity(this.bookService.getBooksByPrice(bookPrice), HttpStatus.OK);
    }

    @GetMapping("/seller/{sellerId}")
    public Object getSellerId(@PathVariable int sellerId, Model model) {
        model.addAttribute("books",bookService.getBooksBySellerId(sellerId));
        model.addAttribute("title", "BOOKS BEING SOLD BY YOU");
        model.addAttribute("totalBooks", bookService.getSellerBooks(sellerId));
        this.sellerId = sellerId;
        return "MyBookStore";
    }

    @GetMapping("/stats/{sellerId}")
    public Object getSellerStats(@PathVariable int sellerId, Model model) {
        model.addAttribute("books",bookService.getBooksBySellerId(sellerId));
        model.addAttribute("title", "Book Statistics");
        model.addAttribute("totalBooks", bookService.getSellerBooks(sellerId));
        this.sellerId = sellerId;
        return "BookStatistics";
    }


    @GetMapping("/bookForm")
    public String showCreateForm(Model model) {
        Book book = new Book();
        model.addAttribute("book", book);
        model.addAttribute("title", "Post New Book");
        return "CreateBookProfile";
    }

    @PostMapping("/new")
    public Object addNewBook(Book book, Model model) {
        System.out.println(book.toString());
        this.bookService.addNewBook(book);
        return "redirect:/books/all";
    }

    @GetMapping("/update/{bookId}")
    public Object updateBook(@PathVariable int bookId, Model model) {
        model.addAttribute("book", this.bookService.getBookById(bookId));
        model.addAttribute("title", "Update book");
        return "ModifyBook";
    }

    @PostMapping("/update/{bookId}")
    public Object updateSnake(@PathVariable int bookId, Book book) {
        this.bookService.updateBook(bookId, book);
        return "redirect:/books/" + bookId;
    }

    @GetMapping("/delete/{bookId}")
    public Object deleteBookById(@PathVariable int bookId) {
        this.bookService.deleteBooksById(bookId);
        return "redirect:/books/seller/" + sellerId;
    }

    @GetMapping("/totalbooks")
    @ResponseBody
    public String getTotalBooks() {
        return "Total number of books: " + this.bookService.getTotalBooks();
    }

    @GetMapping("/sellerbooks/{sellerId}")
    @ResponseBody
    public String getTotalBooks(@PathVariable int sellerId) {
        return "Total number of books for seller " + sellerId + " = " + this.bookService.getSellerBooks(sellerId);
    }
}
