<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 20px;
        }
        h1, h2 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        a {
            color: #4CAF50;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
    <script type="text/javascript">
    function deleteFunc() {
        document.mypage.action="del";
        document.mypage.submit();
    }
    function editFunc(){
        document.mypage.action="edit";
        document.mypage.submit();
    }
    </script>
</head>
<body>
    <h1>Admin Dashboard</h1>
    <p>Welcome, Admin!</p>
    
    <h2>Student List</h2>
    <form name="mypage" >
        <%
            List<Student> liststu = (List<Student>) request.getAttribute("msg");
        %>
        <table border="2">
            <thead>
                <tr>
                    <th>Select</th>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Mobile Number</th>
                    <th>Email Address</th>
                    <th>Mother Name</th>
                    <th>Address</th>
                    <th>Course</th>
                    <th>Department</th>
                    <th>Password</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Student stu : liststu) {
                %>
                <tr>
                    <td><input type="radio" name="rollno" value="<%=stu.getRollNo() %>"></td>
                    <td><%=stu.getRollNo() %></td>
                    <td><%=stu.getName() %></td>
                    <td><%=stu.getMnumber() %></td>
                    <td><%=stu.getEmail() %></td>
                    <td><%=stu.getMothername() %></td>
                    <td><%=stu.getAddress() %></td>
                    <td><%=stu.getCourse() %></td>
                    <td><%=stu.getDepartment() %></td>
                    <td><%=stu.getPassword() %></td>
                    <td><button type="button" onclick="editFunc()">Edit</button></td>
                    <td><button type="button" onclick="deleteFunc()">Delete</button></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </form>

    <p><a href="Login.jsp">Logout</a></p>
</body>
</html>
