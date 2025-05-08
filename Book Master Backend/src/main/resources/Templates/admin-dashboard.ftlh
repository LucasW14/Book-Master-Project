<!-- templates/admin-dashboard.ftlh -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<#include "fragments/navbar.ftlh">

<h1 class="header2" style="color: white; text-align: center">Welcome to the Admin Dashboard</h1>

<div class="profile-container">
    <div class="book-table">
        <table>
            <tr><td><a href="/reviews"><button>View All Reviews</button></a></td></tr>
            <tr><td><a href="/books-list"><button>Manage Books</button></a></td></tr>
            <tr><td><a href="/users/list"><button>View User List</button></a></td></tr>
            <tr><td><a href="/admin/logout"><button>Logout</button></a></td></tr>
        </table>
    </div>
</div>

</body>
</html>
