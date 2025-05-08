<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Reviews</title>

    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h1>All Reviews</h1> <!-- Page header -->

<!-- Back Button -->
<div style="text-align: center; margin-top: 20px;">
    <a href="/admin/dashboard">
        <button class="button2" style="padding: 10px 20px; background-color: #ff6600; color: white; border: none; border-radius: 5px; font-size: 16px;">
            Back to Admin Dashboard
        </button>
    </a>
</div>

<!-- Start of a simple HTML table to display all review entries -->
<div class="profile-container">

    <table border="1">
        <tr> <!-- Table header row -->
            <th>ID</th>           <!-- Column: Review ID -->
            <th>Rating</th>       <!-- Column: Rating value (e.g., 1-5 stars) -->
            <th>User ID</th>      <!-- Column: ID of the user who wrote the review -->
            <th>Reviewer Name</th>
            <th>Book ID</th>
            <th>Review</th>
            <th>Date Made</th>
            <th>DELETE</th>
        </tr>

        <!-- FreeMarker directive to iterate over a list called "reviews" -->
        <#list reviews as review>
        <tr> <!-- Start a new table row for each review -->
            <td>${review.id}</td>         <!-- Output: Review ID -->
            <td>${review.rating}</td>     <!-- Output: Rating number -->
            <td>${review.userId}</td>     <!-- Output: ID of the review's author -->
            <td>${review.reviewerName}</td>
            <td>${review.bookId}</td>     <!-- Output: ID of the book being reviewed -->
            <td>${review.reviewText}</td>
            <td>${review.createdAt}</td>
            <td><a href="/reviews/delete/${review.id?c}"><button>DELETE REVIEW</button></a></td>
        </tr>
    </#list>

    </table>

</div>

<div class="profile-container">
    <!--    <a href="/reviews/new">Add New Review</a>-->
</div>

<br>

<!-- Link to navigate to a form for adding a new review -->

</body>
</html>
