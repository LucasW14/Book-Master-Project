<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h2 class="header2" style="color: white; text-align: center">User Form</h2>

<div class="profile-container">
    <form action="/users/save" method="post">
        <div class="book-table">
            <table>
                <tr><td>Name:</td><td><input type="text" name="name" required></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" required></td></tr>
                <tr><td>Username:</td><td><input type="text" name="username" required></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" required></td></tr>
                <tr><td colspan="2" style="text-align:center;"><button type="submit">Save</button></td></tr>
            </table>
        </div>
    </form>
</div>

</body>
</html>
