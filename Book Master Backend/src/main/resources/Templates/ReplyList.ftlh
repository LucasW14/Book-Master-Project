<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Book Profile</title>
  <link rel="stylesheet" href="/css/styles.css">
  <style>
    .book-reviews-container {
        background-color: #333;
        color: white;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.2);
        width: 95%;
        max-width: 1200px;
        margin: 20px auto;
        overflow-x: auto;
        text-align: center;
    }

    .book-reviews-container img {
        margin-bottom: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.4);
    }

    .reviews-table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .reviews-table th, .reviews-table td {
        padding: 15px;
        border-bottom: 1px solid #555;
        color: #ddd;
    }

    .reviews-table th {
        background-color: #444;
        color: #ddd;
        font-weight: bold;
    }

    .orange-button {
        background-color: #f57c00;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin: 10px 0;
    }

    .orange-button:hover {
        background-color: #fb8c00;
    }
  </style>
</head>
<body>
<#include "fragments/navbar.ftlh">

<h2 style="color: white; text-align: center">Book Profile</h2>

<div class="book-reviews-container">
  <h1>${review.reviewerName}</h1>
  <h2>${review.reviewText}</h2>

  <table class="reviews-table">
    <thead>
    <tr>
      <th>Name</th>
      <th>Reply</th>
      <th>Date Made</th>

    </tr>
    </thead>
    <tbody>
    <#list replyList as reply>
    <tr>
      <td>${reply.replierName}</td>
      <td>${reply.description}</td>
      <td>${reply.dateMade}</td>
      <td><button class="orange-button">View Replies</button></td>
      <td>
        <a href="/reply/replyForm/${review.id?c}">
          <button type="button" class="orange-button">Reply</button>
        </a>
      </td>
    </tr>
    </#list>
    </tbody>
  </table>

<!--  <a href="/books/update/${book.bookId?c}">-->
<!--    <button class="orange-button">Modify</button>-->
<!--  </a>-->

<!--  <a href="/users/${(book.sellerId.userId?c)!'0'}">-->
<!--    <button class="orange-button">Go to Seller's Profile</button>-->
<!--  </a>-->

<!--  <a href="/books/seller/${(book.sellerId.userId?c)!'0'}">-->
<!--    <button class="orange-button">Go to My Book Store</button>-->
<!--  </a>-->
</div>

</body>
</html>
