<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>

</head>
<style>
body {
    display: flex;
    justify-content: center; /* Centers horizontally */
    align-items: center; /* Centers vertically */
    min-height: 100vh; /* Ensures full viewport height */
    margin: 0;
        background-color: red; /* red background for all pages */
        color: yellow; /* Yellow text for all pages */
        font-family: 'Roboto', sans-serif;
}
</style>
<body>


    <form action="/users/signup" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <label for="setType">User Type:</label><br>
        <select id="setType" name="setType" required>
            <option value="buyer">Buyer</option>
            <option value="seller">Seller</option>
        </select><br><br>

        <input type="submit" value="Sign Up">
    </form>
</body>
</html>
