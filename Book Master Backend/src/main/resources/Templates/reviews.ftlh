<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Reviews</title>
</head>
<body>
<h1>All Reviews</h1> <!-- Page header -->

<!-- Start of a simple HTML table to display all review entries -->
<table border="1">
    <tr> <!-- Table header row -->
        <th>ID</th>           <!-- Column: Review ID -->
        <th>Content</th>      <!-- Column: Text content of the review -->
        <th>Rating</th>       <!-- Column: Rating value (e.g., 1-5 stars) -->
        <th>User ID</th>      <!-- Column: ID of the user who wrote the review -->
        <th>Book ID</th>      <!-- Column: ID of the book being reviewed -->
        <th>Created At</th>   <!-- Column: When the review was created -->
    </tr>

    <!-- FreeMarker directive to iterate over a list called "reviews" -->
    <#list reviews as review>
    <tr> <!-- Start a new table row for each review -->
        <td>${review.id}</td>         <!-- Output: Review ID -->
        <td>${review.content}</td>    <!-- Output: Review text -->
        <td>${review.rating}</td>     <!-- Output: Rating number -->
        <td>${review.userId}</td>     <!-- Output: ID of the review's author -->
        <td>${review.bookId}</td>     <!-- Output: ID of the book being reviewed -->
        <td>${review.createdAt}</td>  <!-- Output: Timestamp when the review was created -->
    </tr>
</#list>

</table>

<br>

<!-- Link to navigate to a form for adding a new review -->
<a href="/reviews/new">Add New Review</a>
</body>
</html>
