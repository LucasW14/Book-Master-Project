<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h2 style="color:white; text-align:center;">${title}</h2>

<div class="container2">
    <div class="profile-container2">
        <table class="table2">
            <thead>
            <tr>
                <th class="th2">Purchase ID</th>
                <th class="th2">Book Title</th>
                <th class="th2">Buyer</th>
                <th class="th2">Quantity</th>
                <th class="th2">Total Price</th>
                <th class="th2">Purchase Date</th>
                <th class="th2">Seller ID</th>
            </tr>
            </thead>
            <tbody>
            <#list purchases as purchase>
            <tr>
                <td class="td2">${purchase.purchaseId}</td>
                <td class="td2">${purchase.book.title}</td>
                <td class="td2">${purchase.buyer.name}</td>
                <td class="td2">${purchase.quantity}</td>
                <td class="td2">${purchase.totalPrice}</td>
                <td class="td2">${purchase.purchaseDate?string("yyyy-MM-dd")}</td>
                <td class="td2">${purchase.sellerId}</td>
            </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
