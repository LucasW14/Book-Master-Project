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

<h1>${title}</h1>

<div class="container">
    <form id="update-user" action="/users/update/${user.userId?c}" method="post">
        <label for="name">Full Name: </label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required value="${user.name}">

        <label for="email">Email: </label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required value="${user.email}">

        <label for="username">Username: </label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required value="${user.username}">

        <label for="password">Password:</label>
        <input type="text" id="password" name="password" placeholder="Enter Password" required value="${user.password}">

        <label for="setType">Account Type: </label>
        <select id="setType" name="setType" required>
            <option value="customer">Customer</option>
            <option value="seller">Seller</option>
        </select>

        <a href="/users/${user.userId}" class="orange-button" style="text-decoration: none;">Discard Changes</a>

        <button type="submit" class="orange-button">Update User</button>
    </form>
</div>


</body>
</html>
