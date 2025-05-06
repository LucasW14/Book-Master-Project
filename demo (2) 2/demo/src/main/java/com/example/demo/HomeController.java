package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        // Sample data for the homepage
        String bookTitle = "Africa's Most Wanted";
        String bookAuthor = "Lucas Walton";
        String bookGenre = "Sci-fi";

        // Adding data to the model
        model.addAttribute("bookTitle", bookTitle);
        model.addAttribute("bookAuthor", bookAuthor);
        model.addAttribute("bookGenre", bookGenre);

        // Return the name of the FreeMarker template (without the extension)
        return "home"; // home.ftlh
    }
}
