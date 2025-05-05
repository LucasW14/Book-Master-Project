<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="/css/styles.css">


    <style>


    </style>

</head>
<body>
<#include "fragments/navbar.ftlh">

<!--<div class="header">-->
<!--    <h1 class="hw-title" style="color: yellow; text-align: center">Book Master</h1>-->
<!--    <nav class="nav-links">-->
<!--        <a href="index.html" style="color: yellow; text-align: center">Home</a>-->
<!--        <a href="Book%20Store.html" style="color: yellow; text-align: center">Book Store</a>-->
<!--        <a href="Seller Page.html" style="color: yellow; text-align: center">Profile</a>-->
<!--        <a href="signup.html" style="color: yellow; text-align: center">Signup</a>-->
<!--        <a href="page3.html" style="color: yellow; text-align: center">Contact</a>-->
<!--    </nav>-->
<!--</div>-->

<h2 class="header2" style="color: white; text-align: center">Book Profile</h2>


<div class="profile-container">
    <div class="book-table">
        <table>

            <tr>
                <th><img
                        src="${book.bookPicturePath}"
                        alt="Cobra image" width="104" height="142">
                    <label for="profile-pic"> Upload Profile Picture:</label>
                    <input type="file" id="profile-pic" name="profile-pic" accept="image/*">


                </th>


            </tr>
            <tr>
                <td>Book ID: ${book.bookId?c}</td>
            </tr>
            <tr>
                <td>Book Title: ${book.bookTitle}</td>
            </tr>
            <tr>
                <td>Author: ${book.author}</td>
            </tr>

            <tr>
                <td>Date Published: ${book.publishDate}</td>
                </td>
            </tr>

            <tr>
                <td>Genre: ${book.genre}<br></td>
            </tr>


            <tr>
                <td>Price: ${book.bookPrice}</td>
            </tr>

            <tr>
                <td>Description: ${book.about}</td>
            </tr>

            <tr>
                <td><a href="/books/update/${book.bookId?c}">
                    <button>Modify</button>
                </a></td>

            </tr>

            <tr>
                <td><a href="/users/${(book.sellerId.userId?c)!'0'}">
                    <button>Go to seller's profile</button>
                </a></td>

            </tr>

            <tr>
                <td>

                    <a href="/books/all">
                        <button>Go to My Book Store</button>
                    </a>


                </td>
            </tr>


        </table>
    </div>


</body>
</html>