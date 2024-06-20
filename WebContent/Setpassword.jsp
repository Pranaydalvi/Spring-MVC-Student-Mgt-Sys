<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Password Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        flex-direction: column;
    }
    h1 {
        color: #333;
        margin-bottom: 20px;
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        display: flex;
        flex-direction: column;
    }
    input[type="password"] {
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: calc(100% - 22px);
    }
    button {
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
    }
    button:hover {
        background-color: #45a049;
    }
</style>
<script type="text/javascript">
function checkPassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm_password").value;
    if (password !== confirmPassword) {
        alert("Passwords do not match. Please try again.");
        return false;
    }
    return true;
}
</script>
</head>
<body>
<h1>Set Your Password</h1>
<form name="setpassword" action="register" method="post" onsubmit="return checkPassword()">
    <input type="hidden" name="rollNo" value="<%= request.getParameter("rollNo") %>">
    <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
    <input type="hidden" name="mnumber" value="<%= request.getParameter("mnumber") %>">
    <input type="hidden" name="email" value="<%= request.getParameter("email") %>">
    <input type="hidden" name="mothername" value="<%= request.getParameter("mothername") %>">
    <input type="hidden" name="address" value="<%= request.getParameter("address") %>">
    <input type="hidden" name="course" value="<%= request.getParameter("course") %>">
    <input type="hidden" name="department" value="<%= request.getParameter("department") %>">
    <label>Password:</label>
    <input type="password" id="password" name="password" placeholder="Enter your password" required>
    <label>Confirm Password:</label>
    <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm your password" required>
    <button type="submit">Set Password</button>
</form>
</body>
</html>
