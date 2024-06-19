<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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
        display: flex;
        flex-direction: column;
        width: 300px;
    }
    input[type="text"], input[type="password"] {
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    p {
        margin-top: 20px;
    }
    a {
        color: #4CAF50;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    .message {
        color: red;
        margin-top: 10px;
    }
</style>
</head>
<body>
<h1>Welcome To Student Login Page</h1>
<form action="log">
    <input type="text" name="rollNo" placeholder="Enter Your Roll Number" required>
    <input type="text" name="login" placeholder="Email or Mobile Number" required>
    <input type="password" name="password" placeholder="Password" required>
    <input type="submit" value="Login">
    <div class="message">${msg}</div>
</form>
<p>Not registered? <a href="Register.jsp">Register here</a></p> 
</body>
</html>
