<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Master - Homepage</title>
    <#include "fragments/navbar.ftlh">
    <style>
        body {
            background-color: white;
            color: black;
            font-family: 'Roboto', sans-serif;
            text-align: center;
        }
        .navbar {
            background-color: red;
            padding: 10px;
            display: flex;
            justify-content: flex-end;
        }
        .navbar a {
            color: yellow;
            margin-right: 20px;
            text-decoration: none;
            font-size: 18px;
        }
        .book-section {
            margin-top: 50px;
        }
        .book-title {
            font-size: 32px;
            font-weight: bold;
        }
        .book-author, .book-genre {
            font-size: 24px;
        }
        .about-book {
            margin-top: 40px;
            font-size: 20px;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.6;
        }
        /* Adjusted image size to be 25% */
        .book-image {
            max-width: 25%; /* Image now takes up 25% of the available width */
            height: auto;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<!-- Main Content -->
<div class="book-section">
    <h1 class="book-title">Bestselling Book</h1>
    <img src="https://m.media-amazon.com/images/I/71uYOLTT5HL.jpg" alt="Descriptive text" class="book-image">
    <h2 class="book-title">${bookTitle}</h2>
    <p class="book-author">By: ${bookAuthor}</p>
    <p class="book-genre">${bookGenre}</p>
</div>

<div class="about-book">
    <h3>About Book Master</h3>
    <p>Book Master is an interactive application designed to make buying and selling books easier. Whether you're looking to browse books of your favorite genre, buy the latest bestsellers, or sell your own collection, we've got you covered. Our user-friendly platform lets you find books, sell books, and interact with other users in a safe, secure environment. Start your reading journey with Book Master today!</p>
</div>

<footer>
    © 2025 Book Master. All Rights Reserved.
</footer>

</body>
</html>
