<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookstore - Sign Up</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>


<div class="header">
    <h1 class="hw-title" style="color: yellow; text-align: center">Book Master</h1>
    <nav class="nav-links">
        <a href="index.html" style="color: yellow; text-align: center">Home</a>
        <a href="Book%20Store.html" style="color: yellow; text-align: center">Book Store</a>
        <a href="Seller Page.html" style="color: yellow; text-align: center">Profile</a>
        <a href="signup.html" style="color: yellow; text-align: center">Signup</a>
        <a href="page3.html" style="color: yellow; text-align: center">Contact</a>
    </nav>
</div>


<div class="container">



    <form id="new-user" action="/users/new" method="post">
        <!-- First Name -->

        <label for="name">Full Name: </label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>
        </br>

        <label for="email">Email: </label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="username">Username: </label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required>
        </br>
        <label for="password">Password:</label>
        <input type="text" id="password" name="password" placeholder="Enter Password" required>


        <label for="setType">Account Type: </label>
        <select id="setType" name="setType" required >
            <option value="customer">Customer</option>
            <option value="seller">Seller</option>
        </select>



        <!--    <label for="profile-pic">Upload Profile Picture:</label>-->
        <!--    <input type="file" id="profile-pic" name="profile-pic" accept="image/*">-->
        <!--    </br>-->



        <!-- Submit Button -->



        <button type="submit">Discard Changes</button>
        <button type="submit" class="btn btn-primary">Create User</button>

    </form>
    <p>Already have an account? <a href="login.html">Login</a></p>
</div>
</body>
</html>
