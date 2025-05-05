<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create a Review</title>
</head>
<body>

<h1>Write a New Review</h1>


<form action="/reviews" method="post">
    <!-- Review content input -->
    <label for="content">Content:</label><br>
    <textarea id="content" name="content" rows="4" cols="50" required></textarea><br><br>

    <!-- Rating input (dropdown for 1–5 stars) -->
    <label for="rating">Rating (1-5):</label><br>
    <select id="rating" name="rating" required>
        <option value="">Select Rating</option> <!-- Placeholder option -->
        <option value="1">1</option> <!-- Rating options -->
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br><br>

    <!-- User ID input -->
    <label for="userId">User ID:</label><br>
    <input type="number" id="userId" name="userId" required><br><br>

    <!-- Book ID input -->
    <label for="bookId">Book ID:</label><br>
    <input type="number" id="bookId" name="bookId" required><br><br>

    <!-- Submit button to send the form -->
    <button type="submit">Submit Review</button>
</form>

<br>
<!-- Back link to all reviews -->
<a href="/reviews">Back to All Reviews</a>
</body>
</html>
