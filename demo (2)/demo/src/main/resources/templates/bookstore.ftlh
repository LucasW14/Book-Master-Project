<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bookstore</title>
    <#include "fragments/navbar.ftlh">

    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px 15px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="number"] {
            width: 60px;
            margin-bottom: 5px;
        }
        button {
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Available Books</h1>

    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Publish Date</th>
                <th>Price</th>
                <th>Quantity Available</th>
                <th>Purchase</th>
            </tr>
        </thead>
        <tbody>
            <#list books as book>
                <tr>
                    <td>${book.bookTitle}</td>
                    <td>${book.author}</td>
                    <td>${book.genre}</td>
                    <td>${book.publishDate?string("yyyy-MM-dd")}</td>
                    <td>$${book.bookPrice}</td>
                    <td>${book.bookQuantity}</td>
                    <td>
                        <form method="post" action="/purchase">
                            <input type="hidden" name="bookId" value="${book.bookId}">
                            <input type="number" name="quantity" value="1" min="1" max="${book.bookQuantity}" required>
                            <button type="submit">Buy</button>
                        </form>
                    </td>
                </tr>
            </#list>
        </tbody>
    </table>

    <footer>
            © 2025 Book Master. All Rights Reserved.
        </footer>
</body>
</html>
