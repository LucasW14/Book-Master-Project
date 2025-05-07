<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="/css/styles.css">






</head>
<body>


<#include "fragments/navbar.ftlh">


<!--<div class="header">-->
<!--    <h1 class="hw-title" style="color: yellow; text-align: center">Book Master</h1>-->
<!--    <nav class="nav-links">-->
<!--        <a href="index.html" style="color: yellow; text-align: center">Home</a>-->
<!--        <a href="Book%20Store.html" style="color: yellow; text-align: center">Book Store</a>-->
<!--        <a href="Seller Page.html" style="color: yellow; text-align: center">Profile</a>-->
<!--        <a href="page3\.html" style="color: yellow; text-align: center">Settings</a>-->
<!--    </nav>-->
<!--</div>-->

<h2 class="header2" style="color: Black; text-align: center">Sell a new book</h2>
<h3 class="header3" style="color: Black; text-align: center">${title}</h3>

<div class="container">
<form id="update-book" action="/books/update/${book.bookId?c}" method="post">
    <!-- First Name -->
    <label for="bookTitle">Book Title: </label>
    <input type="text" id="bookTitle" name="bookTitle" placeholder="Enter Book Title" required value="${book.bookTitle}">


    <!-- Email -->

    <!-- Password -->
    <label for="author">Author: </label>
    <input type="text" id="author" name="author" placeholder="Enter Author Name " required value="${book.author}">
    </br>
    <label for="publishDate">Date Published:</label>
    <input type="date" id="publishDate" name="publishDate" placeholder="Enter Date Published" required value="${book.publishDate}">

    <label for="genre">Genre: </label>
    <input type="text" id="genre" name="genre" placeholder="Enter genre of book" required value="${book.genre}">
    </br>
    <label for="bookPrice">Price: </label>
    <input type="text" id="bookPrice" name="bookPrice" placeholder="Enter price of the book" required value="${book.bookPrice}">
    <br>

    <label for="bookQuantity">Quantity of this book: </label>
    <input type="number" id="bookQuantity" name="bookQuantity" placeholder="Enter Quantity of the book" required value="${book.bookQuantity}">
    <br>


    <label for="about">Description: </label>
    <input type="text" id="about" name="about" placeholder="What is the book about" required value="${book.about}">
    </br>

    <label for="userId">Seller ID: </label>
    <input type="number" id="userId" name="userId" placeholder="Enter your seller ID " required value="${book.sellerId.userId}" readonly>
    <br>

    <!--    <label for="profile-pic">Upload Profile Picture:</label>-->
    <!--    <input type="file" id="profile-pic" name="profile-pic" accept="image/*">-->
    <!--    </br>-->



    <!-- Submit Button -->



    <button type="submit">Save to drafts</button>
    <a href="/books/${book.bookId?c}" class="btn btn-outline-danger">Discard Changes</a>

    <button type="submit" class="btn btn-primary">Update Book Profile</button>

</form>
</div>

</body>
</html>