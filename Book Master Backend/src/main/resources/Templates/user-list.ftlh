<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        .search-form {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }
        .search-bar-wrapper {
            display: flex;
            width: 400px;
        }
        .search-bar-wrapper input[type="text"] {
            flex: 1;
            padding: 10px 15px;
            border: 2px solid #0099cc;
            border-right: none;
            border-radius: 25px 0 0 25px;
            outline: none;
            font-size: 16px;
        }
        .search-bar-wrapper button {
            padding: 10px 20px;
            border: 2px solid #0099cc;
            background-color: #0099cc;
            color: white;
            border-radius: 0 25px 25px 0;
            cursor: pointer;
            font-weight: bold;
        }
        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: separate;
            border-spacing: 0 15px;
        }
        thead tr {
            background-color: #000;
            color: white;
        }
        thead th {
            padding: 12px 20px;
            font-weight: 600;
        }
        tbody tr {
            background-color: #f9f9f9;
            transition: background-color 0.3s ease;
        }
        tbody tr:hover {
            background-color: #f0f0f0;
        }
        tbody td {
            padding: 12px 20px;
            vertical-align: middle;
        }
        .actions button {
            margin-right: 5px;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            color: white;
            cursor: pointer;
        }
        .edit-btn {
            background-color: #007bff;
        }
        .delete-btn {
            background-color: #dc3545;
        }
        .create-user {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .create-user a {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<#include "fragments/navbar.ftlh">

<h1>User List</h1>

<form action="/users/search" method="get" class="search-form">
    <div class="search-bar-wrapper">
        <input type="text" name="query" placeholder="Search by username or email" required>
        <button type="submit">Search</button>
    </div>
</form>

<div class="create-user">
    <a href="/users/new">+ Create New User</a>
</div>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Name</th>
        <th>Email</th>
        <th>Type</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td>${user.id}</td>
        <td>${user.username}</td>
        <td>${user.name}</td>
        <td>${user.email}</td>
        <td>${user.setType}</td>
        <td class="actions">
            <a href="/users/${user.id}/edit">
                <button class="edit-btn">Edit</button>
            </a>
            <form action="/users/${user.id}" method="post" style="display:inline;">
                <input type="hidden" name="_method" value="delete">
                <button type="submit" class="delete-btn" onclick="return confirm('Are you sure?')">Delete</button>
            </form>
        </td>
    </tr>
    </#list>
    </tbody>
</table>

<footer style="text-align: center; margin-top: 40px;">
    © 2025 Book Master. All Rights Reserved.
</footer>

</body>
</html>
