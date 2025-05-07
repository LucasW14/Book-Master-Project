<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link rel="stylesheet" href="/css/styles.css">


  <style>


  </style>

</head>
<body>
<#include "fragments/navbar.ftlh">

<!--<div class="header">-->
<!--    <h1 class="hw-title" style="color: yellow; text-align: center">Book Master</h1>-->
<!--    <nav class="nav-links">-->
<!--        <a href="index.html" style="color: yellow; text-align: center">Home</a>-->
<!--        <a href="Book%20Store.html" style="color: yellow; text-align: center">Book Store</a>-->
<!--        <a href="Seller Page.html" style="color: yellow; text-align: center">Profile</a>-->
<!--        <a href="signup.html" style="color: yellow; text-align: center">Signup</a>-->
<!--        <a href="page3.html" style="color: yellow; text-align: center">Contact</a>-->
<!--    </nav>-->
<!--</div>-->

<h2 class="header2" style="color: white; text-align: center">Book Profile</h2>


<div class="profile-container">
  <div class="book-table">
    <table>

      <tr>
        <th><img
                src="${book.bookPicture}"
                alt="Cobra image" width="104" height="142">



        </th>


      </tr>
      <tr>
        <td>

          <table>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Email</th>
            </tr>
            <tr>
              <td>1</td>
              <td>Alice Smith</td>
              <td>alice@example.com</td>
            </tr>

          </table>




        </td>
      </tr>


      <tr>
        <td><a href="/books/update/${book.bookId?c}">
          <button class="orange-button">Modify</button>
        </a></td>

      </tr>

      <tr>
        <td><a href="/users/${(book.sellerId.userId?c)!'0'}">
          <button class="orange-button">Go to seller's profile</button>
        </a></td>

      </tr>

      <tr>
        <td>

          <a href="/books/seller/${(book.sellerId.userId?c)!'0'}">
            <button class="orange-button">Go to My Book Store</button>
          </a>


        </td>
      </tr>


    </table>
  </div>


</body>
</html>