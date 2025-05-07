<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Purchase</title>
</head>
<body>
    <h1>Create a New Purchase</h1>

    <form action="/purchases/new" method="post">
        <label for="bookId">Book:</label>
        <select name="bookId" id="bookId" required>
            <#list books as book>
                <option value="${book.bookId}">${book.bookTitle} (${book.bookQuantity} in stock)</option>
            </#list>
        </select>
        <br><br>

        <label for="buyerId">Buyer:</label>
        <select name="buyerId" id="buyerId" required>
            <#list users as user>
                <option value="${user.userId}">${user.username}</option>
            </#list>
        </select>
        <br><br>

        <label for="quantity">Quantity:</label>
        <input type="number" name="quantity" id="quantity" min="1" required>
        <br><br>

        <button type="submit">Submit Purchase</button>
    </form>

    <br>
    <a href="/purchases">Back to Purchase List</a>
</body>
</html>
