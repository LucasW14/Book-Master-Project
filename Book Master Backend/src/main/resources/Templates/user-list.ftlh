<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Users</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h2 class="header2" style="color: white; text-align: center">User List</h2>

<div class="profile-container">
    <div class="book-table">
        <table>
            <tr><th>ID</th><th>Name</th><th>Email</th><th>Actions</th></tr>
            <#list users as user>
            <tr>
                <td>${user.userId}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>
                    <a href="/users/update/${user.userId}"><button>Edit</button></a>
                    <a href="/users/delete/${user.userId}"><button>Delete</button></a>
                </td>
            </tr>
        </list>
        </table>
    </div>
</div>

</body>
</html>
