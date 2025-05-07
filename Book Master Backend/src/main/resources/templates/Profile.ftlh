<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Seller</title>

    <link rel="stylesheet" href="/css/styles.css">

    <style>

<!--        body {-->
<!--      font-family: Arial, sans-serif;-->
<!--  }-->

    </style>

</head>
<body>

<#include "fragments/navbar.ftlh">

<!--<div class="header">-->
<!--    <h1 class="hw-title" style="color: yellow; text-align: center">Book Master</h1>-->
<!--    <nav class="nav-links">-->
<!--        <a href="/books/all" style="color: yellow; text-align: center">Home</a>-->
<!--        <a href="/books/all" style="color: yellow; text-align: center">Book Store</a>-->
<!--        <a href="Seller Page.html" style="color: yellow; text-align: center">Profile</a>-->
<!--        <a href="page3.html" style="color: yellow; text-align: center">Contact</a>-->
<!--    </nav>-->
<!--</div>-->

<h2 class="header2" style="color: Black; text-align: center">Seller Profile</h2>

<div class="profile-container">
    <table class="profile-table">
        <tr>
            <th><img src="https://upload.wikimedia.org/wikipedia/en/2/2e/Pat-Morita_%28Karate_Kid%29.jpg"
                     alt="Seller image" width="104" height="142"></th>
        </tr>
        <tr>
            <td>Name: ${user.name}</td>
        </tr>
        <tr>
            <td>Classification: ${user.setType}</td>
        </tr>
        <tr>
            <td>ID: ${user.userId?c}</td>
        </tr>
        <tr>
            <td>Follower Count: 25,000</td>
        </tr>
        <tr>
            <td><a href="/users/update/${user.userId?c}"><button>Modify Profile</button></a></td>
        </tr>
    </table>
</div>


    <!-- Button Section (Centered) -->
<!-- Button Section: moved inside profile container -->
<div class="button-container">
    <a href="My%20Book%20Drafts.html"><button class="button1">My Book Drafts</button></a>
    <a href="/books/stats/${user.userId?c}"><button class="button1">Sales Statistics</button></a>
    <a href="/books/bookForm"><button class="button1">Sell a new book</button></a>
    <a href="/books/seller/${user.userId?c}"><button class="button1">My Book Store</button></a>
</div>
</div>
</div>

<h1 style="color: black; text-align: center">“It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it
    was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness,
    it was the spring of hope, it was the winter of despair.” — Charles Dickens, A Tale of Two Cities</h1>

</body>
</html>
