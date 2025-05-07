//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.csc340.demo.Book;

import java.util.Date;
import java.util.List;

import com.csc340.demo.User.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {
    List<Book> getBooksByGenre(String genre);

    @Query(value = "select * from books b where b.book_price >= ?1",nativeQuery = true)
    List<Book> getBooksByPrice(double bookPrice);

    @Query(value = "select * from books b where b.book_title like %?1% ", nativeQuery = true)
    List<Book> getBooksByTitle(String bookTitle);

    @Query(value = "select * from books b where b.user_id = ?1", nativeQuery = true)
    List<Book> getBooksBySellerId(int userId);

    @Query(value = "select * from books b where b.publish_date = ?1", nativeQuery = true)
    List<Book> getBooksByPublishDate(Date publishDate);

    @Query("SELECT COUNT(b) FROM Book b")
    long countAllBooks();

    @Query(value = "SELECT COUNT(*) FROM books WHERE user_id = :sellerId", nativeQuery = true)
    long countSellerBooks(@Param("sellerId") int userId);

    @Query(value = "SELECT b.sellerId FROM Book b WHERE b.bookId = :bookId")
    User getBookSellerId(@Param("bookId") int bookId);

    static List<Book> findByBookTitleContainingIgnoreCase(String keyword) {
        return null;
    }

}
