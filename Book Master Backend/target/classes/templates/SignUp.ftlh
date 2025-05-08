<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookstore - Sign Up</title>


    <link rel="stylesheet" href="/css/styles.css">



</head>
<body>

<!-- Move this inside <body> -->
<#include "fragments/navbar.ftlh">

<div class="container">
    <form id="new-user" action="/users/new" method="post">
        <label for="name">Full Name: </label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="email">Email: </label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="username">Username: </label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter Password" required>

        <label for="setType">Account Type: </label>
        <select id="setType" name="setType" required>
            <option value="customer">Customer</option>
            <option value="seller">Seller</option>
        </select>

        <label for="profileImage">Profile picture (give image link): </label>
        <input type="text" id="profileImage" name="profileImage" required>

        <button type="submit" class="orange-button">Discard Changes</button>
        <button type="submit" class="orange-button">Create User</button>
    </form>
</div>

<p style="text-align:center;">Already have an account? <a href="login.html">Login</a></p>

</body>
</html>
