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

<div class="form-container">
    <h2>Reply to Review</h2>

    <h2 style="color: white">${review.reviewerName}</h2>
    <h3 style="text-align: center">${review.reviewText}</h3>
    <form action="/reply/new" method="post">


        <label for="userId">Review Id:</label>
        <input type="text" id="reviewId" name="userId" value="${review.id}" readonly required>

        <label for="reviewerName">Your Name:</label>
        <input type="text" id="reviewerName" name="reviewerName" required>


        <label for="comment">Comment:</label>
        <textarea id="comment" name="comment" required></textarea>

        <button type="submit">Submit</button>
    </form>
</div>


</body>
</html>
