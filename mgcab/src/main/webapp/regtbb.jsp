<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View User Details - Mega City Cab</title>

    <!-- Bootstrap for Styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <style>
        body {
            background-color: #000000; /* Black background */
            font-family: Arial, sans-serif;
            color: #ffffff; /* White text */
        }
        .container {
            margin-top: 30px;
        }
        .table {
            background: #1e1e1e; /* Dark gray background */
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 0px 15px rgba(255, 165, 0, 0.3); /* Yellow shadow */
        }
        .table thead {
            background: linear-gradient(to right, #ffa500, #ff8c00); /* Yellow gradient */
            color: #000000; /* Black text */
        }
        .table th, .table td {
            text-align: center;
            padding: 15px;
            color: #000000; /* Black text */
        }
        .btn-delete {
            background: #ff0000; /* Red for delete button */
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn-delete:hover {
            background: #cc0000; /* Darker red on hover */
        }
        h2 {
            color: #ffa500; /* Yellow text */
            text-shadow: 2px 2px 4px rgba(255, 165, 0, 0.5); /* Yellow shadow */
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center">View Users Details</h2>
    
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th scope="col">Register No</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">NIC</th>
                <th scope="col">Contact No</th>
                <th scope="col">UserName</th>
                <th scope="col">Password</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="cus" items="${cust}">
                <tr>
                    <td>${cus.regno}</td>
                    <td>${cus.name}</td>
                    <td>${cus.address}</td>
                    <td>${cus.nic}</td>
                    <td>${cus.tpno}</td>
                    <td>${cus.username}</td>
                    <td>${cus.pass}</td>
                    <td>
                        <form action="deluser" method="post">
                            <input type="hidden" name="regno" value="${cus.regno}">
                            <button type="submit" class="btn-delete">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap Script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>