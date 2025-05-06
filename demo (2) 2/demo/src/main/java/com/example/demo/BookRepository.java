package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface BookRepository extends JpaRepository<Book, Integer> {
    List<Book> findByGenre(String genre);
    List<Book> findBySellerId(User seller);
    List<Book> findByBookTitleContainingIgnoreCase(String keyword);

}
