<!DOCTYPE html>
<html>
<head>
    <title>Credit Card Information</title>
    <#include "fragments/navbar.ftlh">
</head>
<body>
    <h2>Enter Credit Card Information</h2>
    <form action="/submitCreditCard" method="post">
        <input type="hidden" name="bookId" value="${bookId}">
        <input type="hidden" name="quantity" value="${quantity}">
        <p>Book: ${bookTitle}</p>
        <p>Quantity: ${quantity}</p>
        <p>Total Price: ${totalPrice}</p>

        <label for="cardNumber">Card Number:</label><br>
        <input type="text" id="cardNumber" name="cardNumber" required><br><br>

        <label for="expiryDate">Expiry Date (MM/YY):</label><br>
        <input type="text" id="expiryDate" name="expiryDate" required><br><br>

        <label for="cvv">CVV:</label><br>
        <input type="text" id="cvv" name="cvv" required><br><br>

        <button type="submit">Submit</button>
    </form>
    <footer>
            © 2025 Book Master. All Rights Reserved.
        </footer>
</body>
</html>
