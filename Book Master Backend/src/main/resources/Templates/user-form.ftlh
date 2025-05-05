<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${user?exists?then('Edit User', 'Create User')}</title>
</head>
<body>
<h1>${user?exists?then('Edit User', 'Create User')}</h1>

<form action="${user?exists?then('/users/' + user.id, '/users')}" method="post">
    <#if user??>
    <!-- Only for editing: override method to PUT -->
    <input type="hidden" name="_method" value="put">
</#if>

<!-- Username input -->
<label for="username">Username:</label><br>
<input type="text" id="username" name="username" value="${user.username!}" required><br><br>

<!-- Name input -->
<label for="name">Name:</label><br>
<input type="text" id="name" name="name" value="${user.name!}" required><br><br>

<!-- Email input -->
<label for="email">Email:</label><br>
<input type="email" id="email" name="email" value="${user.email!}" required><br><br>

<!-- Password input -->
<label for="password">Password:</label><br>
<input type="password" id="password" name="password" value="${user.password!}" required><br><br>

<!-- User role/type input -->
<label for="setType">User Type:</label><br>
<select id="setType" name="setType" required>
    <option value="">Select a type</option>
    <option value="admin" ${user.setType?string == "admin"?then('selected', '')}>Admin</option>
    <option value="customer" ${user.setType?string == "customer"?then('selected', '')}>Customer</option>
    <option value="provider" ${user.setType?string == "provider"?then('selected', '')}>Provider</option>
</select><br><br>

<!-- Submit button -->
<button type="submit">${user?exists?then('Update', 'Create')}</button>
</form>

<br>
<a href="/users">Back to User List</a>
</body>
</html>
