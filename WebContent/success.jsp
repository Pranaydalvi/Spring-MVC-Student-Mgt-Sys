<%@page import="com.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
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
    .student-details {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
    }
    .student-details label {
        font-weight: bold;
    }
    .student-details p {
        margin: 5px 0;
    }
    a {
        color: #4CAF50;
        text-decoration: none;
        margin-top: 20px;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<h1>Student Details</h1>

<% 
    Student student = (Student)request.getAttribute("msg");
    if (student != null) {
%>

<div class="student-details">
    <p><label>Roll No:</label> <%= student.getRollNo() %></p>
    <p><label>Name:</label> <%= student.getName() %></p>
    <p><label>Mobile Number:</label> <%= student.getMnumber() %></p>
    <p><label>Email Address:</label> <%= student.getEmail() %></p>
    <p><label>Mother's Name:</label> <%= student.getMothername() %></p>
    <p><label>Address:</label> <%= student.getAddress() %></p>
    <p><label>Course:</label> <%= student.getCourse() %></p>
    <p><label>Department:</label> <%= student.getDepartment() %></p>
    <p><label>Password:</label> <%= student.getPassword() %></p>
</div>

<%
    } else {
%>
<p>Student details not found.</p>
<%
    }
%>

<p><a href="Index.jsp">Back to Home Page</a></p>
</body>
</html>
