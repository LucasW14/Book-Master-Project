<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>

    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-color: white;
            color: yellow;
            font-family: 'Roboto', sans-serif;
        }
        form {
            background-color: grey; /* Optional: deeper red for contrast */
            padding: 30px;
            border-radius: 10px;
        }
        label, input, select {
            display: block;
            width: 100%;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<form action="/users/signup" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>

    <label for="setType">User Type:</label>
    <select id="setType" name="setType" required>
        <option value="buyer">Buyer</option>
        <option value="seller">Seller</option>
    </select>

    <input type="submit" value="Sign Up">
</form>


</body>
</html>
