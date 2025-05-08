<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Review Form</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h2 class="header2" style="color: white; text-align: center">Submit Review</h2>

<div class="profile-container">
    <form action="/reviews" method="post">
        <div class="book-table">
            <table>
                <tr><td>ID of Book:</td><td><input type="number" name="bookId" min="1" max="5" value="${book.bookId}" readonly required></td></tr>
                <tr><td>Your User Id:</td><td><input type="number" name="userId" required></td></tr>
                <tr><td>Your Name:</td><td><input type="text" name="reviewerName" min="1" max="5" required></td></tr>
                <tr><td>Rating:</td><td><input type="number" name="rating" min="1" max="5" required></td></tr>
                <tr><td>Comment:</td><td><textarea name="reviewText" rows="4" required></textarea></td></tr>
                <tr><td colspan="2" style="text-align:center;"><button type="submit">Submit</button></td></tr>
            </table>
        </div>
    </form>
</div>

</body>
</html>
