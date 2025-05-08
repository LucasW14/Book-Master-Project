<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/styles.css">
    <style>
        .profile-container {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
            margin: 20px;
        }

        .sales-table {
            margin: 40px auto;
            width: 80%;
            border-collapse: collapse;
        }

        .sales-table th, .sales-table td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }

        .sales-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<#include "fragments/navbar.ftlh">

<h2 class="header2" style="color: white; text-align: center">Book Profile</h2>

<!-- Book Details Container -->
<div class="profile-container">
    <div class="book-table">
        <table>
            <tr>
                <th><img src="${book.bookPicture}" alt="Book image" width="104" height="142"></th>
            </tr>
            <tr><td>Book ID: ${book.bookId?c}</td></tr>
            <tr><td>Book Title: ${book.bookTitle}</td></tr>
            <tr><td>Price: ${book.bookPrice}</td></tr>
            <tr><td>Book Sold this Month: ${purchaseAmount}</td></tr>
            <tr><td>Book sold past six Months: ${purchaseAmount}</td></tr>
            <tr><td>Book Sold this past year: ${purchaseAmount}</td></tr>
            <tr><td><a href="/books/update/${book.bookId?c}"><button class="orange-button">Modify</button></a></td></tr>
            <tr><td><a href="/users/${(book.sellerId.userId?c)!'0'}"><button class="orange-button">Go to seller's profile</button></a></td></tr>
            <tr><td><a href="/books/seller/${(book.sellerId.userId?c)!'0'}"><button class="orange-button">Go to My Book Store</button></a></td></tr>
        </table>
    </div>
</div>

<!-- Sales Table (OUTSIDE the container) -->
<table class="sales-table">
    <tr>
        <th>Total Book Sales This Month</th>
        <th>Total Book Sales Past 6 Months</th>
        <th>Total Book Sales Past This Year</th>
    </tr>
    <tr>
        <td>${sellerPurchases}</td>
        <td>${sellerPurchases}</td>
        <td>${sellerPurchases}</td>
    </tr>
</table>

</body>
</html>
