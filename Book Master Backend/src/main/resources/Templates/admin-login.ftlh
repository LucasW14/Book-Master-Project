<!-- templates/admin-login.ftlh -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h2 class="header2" style="color: white; text-align: center">Admin Login</h2>

<div class="profile-container">
    <form action="/admin/login" method="post">
        <div class="book-table">
            <table>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" required></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;"><button type="submit">Login</button></td>
                </tr>
            </table>
        </div>
    </form>
</div>

</body>
</html>
