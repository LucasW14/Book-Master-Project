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

<!-- Back Button -->
<div style="text-align: center; margin-top: 20px;">
    <a href="/admin/dashboard">
        <button class="button2" style="padding: 10px 20px; background-color: #ff6600; color: white; border: none; border-radius: 5px; font-size: 16px;">
            Back to Admin Dashboard
        </button>
    </a>
</div>

<div class="container2">
    <div class="profile-container2">
        <table class="table2">
            <tr><th class="th2">ID</th><th class="th2">Name</th><th class="th2">Email</th> <th class="th2">Set Type</th><th class="th2">Actions</th></tr>
            <#list users as user>
            <tr>
                <td class="td2">${user.userId}</td>
                <td class="td2">${user.name}</td>
                <td class="td2">${user.email}</td>
                <td class="td2">${user.setType}</td>
                <td class="td2">
                    <a href="/users/update/${user.userId?c}"><button class="button2">Edit</button></a>
                    <a href="/users/delete/${user.userId?c}"><button class="button2">Delete</button></a>
                </td>
            </tr>
        </#list>
        </table>
    </div>
</div>

</body>
</html>
