<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>


    <link rel="stylesheet" href="/css/style.css">



</head>
<body>

<div class="header">
    <h1 class="hw-title" style="color: yellow; text-align: center">Book Master</h1>
    <nav class="nav-links">
        <a href="Home.ftlh" style="color: yellow; text-align: center">Home</a>
        <a href="Book%20Store.html" style="color: yellow; text-align: center">Book Store</a>
        <a href="Seller Page.html" style="color: yellow; text-align: center">Profile</a>
        <a href="page3.html" style="color: yellow; text-align: center">Contact</a>
    </nav>
</div>

<h2 class="header2" style="color: yellow; text-align: center">My Book Store</h2>


<h2> </h2>


<div class="search-bar" style="margin-top: 200px; text-align: center;">
    <form action="/books/title">
        <input type="text" name="search" placeholder="Search By Name 🔍" required>
        <button type="submit">Search</button>
    </form>
</div>


<div>
    <button onclick="window.location.href='/books/bookForm'" class="btn">Post New Book</button>
</div>



<div class="table-container">
    <#list bookList as book>

    <table>

        <tr>
            <th><img class="img2" src="https://m.media-amazon.com/images/I/71cy4TZzs4L.jpg"
                     alt="American mission image" width="104" height="142"></th>
        </tr>
        <tr>
            <td>Book Title: ${book.bookTitle}</td>
        </tr>
        <tr>
            <td>Genre: ${book.genre}</td>
        </tr>
        <tr>
            <td>Price: ${book.bookPrice}</td>
        </tr>
        <tr>
            <td>Author: ${book.author}</td>
        </tr>
        <tr>
            <td><a href="/books/${book.bookId?c}">
                <button>View Details</button>
            </a></td>
        </tr>

        <tr>
            <td><a href="Book%20Profile.html">
                <a href="Review%20Page.html"><button>View Reviews</button></a>
            </a></td>
        </tr>

        <tr>
            <td>
                <a href="/books/delete/${book.bookId?c}"><button>Delete</button></a>
            </td>
        </tr>


    </table>

</#list>




</div>


</body>
<p>&copy; 2025 Book Master. All Rights Reserved.</p>
</html>