<%@page import="java.util.List"%>
<%@page import="model.book"%>
<%@page import="service.book_service"%>
<%@page import="controller.database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Bookings</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid yellow;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: yellow;
            color: black;
        }
        tr:nth-child(even) {
            background-color: #333;
        }
    </style>
</head>
<body>
    <h2>Booking Details</h2>
    <table>
        <tr>
            <th>Booking ID</th>
            <th>Customer Name</th>
            <th>Contact No</th>
            <th>Email</th>
            <th>Vehicle Category</th>
            <th>Start Location</th>
            <th>End Location</th>
            <th>Booking Date</th>
        </tr>
        <%
            book_service bookService = new book_service(database.getcon());
            List<book> bookings = bookService.getAllBookings();
            for (book b : bookings) {
        %>
        <tr>
            <td><%= b.getBookid() %></td>
            <td><%= b.getCusname() %></td>
            <td><%= b.getCusconno() %></td>
            <td><%= b.getCusmail() %></td>
            <td><%= b.getVcat() %></td>
            <td><%= b.getTripstloc() %></td>
            <td><%= b.getTripendloc() %></td>
            <td><%= b.getBookdate() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
 