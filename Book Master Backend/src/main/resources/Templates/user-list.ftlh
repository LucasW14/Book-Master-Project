<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
<h1>All Users</h1>

<a href="/users/new">+ Create New User</a><br><br>

<table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Email</th>
        <th>Type</th>
        <th>Actions</th>
    </tr>

    <#list users as user>
    <tr>
        <td>${user.id}</td>
        <td>${user.username}</td>
        <td>${user.email}</td>
        <td>${user.setType}</td>
        <td>
            <a href="/users/${user.id}">View</a> |
            <a href="/users/${user.id}/edit">Edit</a> |
            <form action="/users/${user.id}" method="post" style="display:inline;">
                <input type="hidden" name="_method" value="delete">
                <button type="submit" onclick="return confirm('Are you sure?');">Delete</button>
            </form>
        </td>
    </tr>
</#list>
</table>
</body>
</html>
