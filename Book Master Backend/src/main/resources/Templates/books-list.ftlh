<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h2 class="header2" style="color: white; text-align: center">All Books</h2>

<div class="profile-container">
    <div class="book-table">
        <table>
            <thead>
            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>ISBN</th>
                <th>Genre</th>
                <th>Cover Image</th>
            </tr>
            </thead>
            <tbody>
            <#list books as book>
            <tr>
                <td>${book.bookId}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
                <td>${book.genre}</td>
                <td>
                    <#if book.coverImage?? && book.coverImage?length gt 0>
                    <img src="${book.coverImage}" alt="Cover Image" width="50" height="50">
                    <#else>
                    N/A
                </#if>
                </td>
            </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
