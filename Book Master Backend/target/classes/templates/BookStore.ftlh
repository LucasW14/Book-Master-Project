<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bookstore</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
                width: 90%;
                margin: 30px auto;
                border-collapse: separate;
                border-spacing: 0 15px;
                font-family: 'Inter', sans-serif;
            }

            thead tr {
                background-color: #000;
                color: white;
                text-align: left;
            }

            thead th {
                padding: 12px 20px;
                font-weight: 600;
            }

            thead th:first-child {
                border-radius: 8px 0 0 8px;
            }

            thead th:last-child {
                border-radius: 0 8px 8px 0;
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

            tbody td:first-child {
                border-left: 4px solid #ffcc00;
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
    border: 2px solid #ff9900;
    border-right: none;
    border-radius: 25px 0 0 25px;
    outline: none;
    font-size: 16px;
    transition: 0.3s ease;
}

.search-bar-wrapper input[type="text"]:focus {
    border-color: #ff9900;
    box-shadow: 0 0 5px rgba(255, 153, 0, 0.5);
}

.search-bar-wrapper button {
    padding: 10px 20px;
    border: 2px solid #ff9900;
    background-color: #ff9900;
    color: white;
    border-radius: 0 25px 25px 0;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s ease;
}

.search-bar-wrapper button:hover {
    background-color: #e68a00;
}

               .orange-button {
    padding: 10px 20px;
    border: 2px solid #ff9900;
    background-color: #ff9900;
    color: white;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s ease;
}

.orange-button:hover {
    background-color: #e68a00;
}



    </style>
</head>
<body>

<#if successMessage??>
<div style="background-color: #d4edda; color: #155724; padding: 10px 20px; border: 1px solid #c3e6cb; border-radius: 5px; margin: 20px auto; width: 80%; text-align: center;">
    ${successMessage}
</div>
</#if>

<#include "fragments/navbar.ftlh">


<form action="/books/title" method="get" class="search-form">
    <div class="search-bar-wrapper">
        <input type="text" name="search" placeholder="Search by title" required>
        <button type="submit"> Search</button>
    </div>
</form>


</form>

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
        <th>Seller ID</th>
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
        <td>${book.sellerId.userId}</td>
        <td>
            <form method="get" action="/purchase/purchase/${book.bookId?c}">
                <input type="hidden" name="bookId" value="${book.bookId}">
                <input type="number" name="quantity" value="1" min="1" max="${book.bookQuantity}" required>
                <button type="submit" class="orange-button">Buy</button>
            </form>
            <form action="/subscriptions/new" method="post">
                <input type="hidden" name="userId" value="1"/>
                <input type="hidden" name="plan" value="Until Unsubscribe"/>
                <input type="hidden" name="status" value="Active"/>
                <button type="submit" class="orange-button" style= "padding: 10px 20px; border: none; border-radius: 5px;">
                    Subscribe
                </button>

            </form>
            <a href="/books/${book.bookId?c}"><button class="orange-button">View Details</button></a>

            <a href="/reviews/reviewonbook/${book.bookId?c}"><button class="orange-button">Write a review</button></a>

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
