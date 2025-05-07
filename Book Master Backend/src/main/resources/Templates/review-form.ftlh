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
    <form action="/reviews/save" method="post">
        <div class="book-table">
            <table>
                <tr><td>Rating:</td><td><input type="number" name="rating" min="1" max="5" required></td></tr>
                <tr><td>Comment:</td><td><textarea name="comment" rows="4" required></textarea></td></tr>
                <tr><td colspan="2" style="text-align:center;"><button type="submit">Submit</button></td></tr>
            </table>
        </div>
    </form>
</div>

</body>
</html>
