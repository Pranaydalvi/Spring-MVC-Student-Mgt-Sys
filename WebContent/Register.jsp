<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
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
    input[type="text"] {
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
</head>
<body>
<h1>Welcome to Register Page</h1>
<form action="Setpassword.jsp" method="post">
    <label>Student RollNo:</label>
    <input type="text" name="rollNo" placeholder="Enter your roll number">
    <label>Student Name:</label>
    <input type="text" name="name" placeholder="Enter your Name">
    <label>Student Mobile Number:</label>
    <input type="text" name="mnumber" placeholder="Enter your Mobile Number">
    <label>Student Email Address:</label>
    <input type="text" name="email" placeholder="Enter your Email Address">
    <label>Student Mother Name:</label>
    <input type="text" name="mothername" placeholder="Enter your Mother Name">
    <label>Student Address:</label>
    <input type="text" name="address" placeholder="Enter your Address">
    <label>Student Course:</label>
    <input type="text" name="course" placeholder="Enter your Course">
    <label>Student Department:</label>
    <input type="text" name="department" placeholder="Enter your Department">
    <button type="submit">Submit</button>
</form>
</body>
</html>
