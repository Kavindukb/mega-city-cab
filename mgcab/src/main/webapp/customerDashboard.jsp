<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard - Mega City Cab</title>
    
    <!-- Bootstrap for Responsiveness -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #ffffff; /* White background */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background: linear-gradient(to right, #ffd700, #ffa500); /* Yellow gradient */
            color: black; /* Black text */
            text-align: center;
            padding: 20px;
            font-size: 26px;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }
        .header img {
            height: 50px;
            width: auto;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background: #000000; /* Black background */
            color: white;
            position: fixed;
            padding-top: 100px;
            box-shadow: 4px 0 6px rgba(0, 0, 0, 0.1);
            top: 0;
            left: 0;
        }
        .sidebar a {
            display: block;
            color: white;
            padding: 15px 20px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background: #ffa500; /* Yellow hover */
            color: black; /* Black text on hover */
            border-radius: 5px;
        }
        .main-content {
            margin-left: 250px;
            padding: 100px 20px 20px 20px;
            background-color: #ffffff; /* White background */
        }
        .card {
            margin: 20px 0;
            padding: 20px;
            background: #ffffff; /* White background */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: 1px solid #e0e0e0; /* Light border */
        }
        .card h3 {
            margin-bottom: 20px;
            color: #333333; /* Black text */
            font-size: 24px;
            font-weight: bold;
        }
        .card p {
            margin-bottom: 15px;
            color: #555555; /* Dark gray text */
        }
        .btn-action {
            background: #ffa500; /* Yellow button */
            color: black; /* Black text */
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
            display: block;
            margin-top: 10px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            width: 100%;
        }
        .btn-action:hover {
            background: #ff8c00; /* Darker yellow on hover */
        }
        .btn-container {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }
        .btn-container .btn-action {
            flex: 1; /* Make buttons share equal space */
        }
        .profile-section {
            width: 300px;
            position: fixed;
            top: 120px;
            right: 20px;
            z-index: 1000;
            max-height: 80vh;
            overflow-y: auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 15px;
        }
        .feedback-item, .vehicle-item, .driver-item {
            margin-bottom: 15px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background: #f9f9f9;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .feedback-item:hover, .vehicle-item:hover, .driver-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }
        .rating {
            color: #ffa500; /* Yellow rating stars */
            font-weight: bold;
        }
        .driver-item img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-right: 15px;
            object-fit: cover;
        }
        .driver-item {
            display: flex;
            align-items: center;
        }
        .vehicle-item {
            display: flex;
            align-items: center;
            gap: 15px;
        }
        .vehicle-item i {
            font-size: 28px;
            color: #ffa500; /* Yellow icons */
        }
        .vehicle-item p {
            margin: 0;
            font-size: 16px;
            color: #555555; /* Dark gray text */
        }
        .feedback-item p {
            margin: 0;
            font-size: 16px;
            color: #555555; /* Dark gray text */
        }
        .feedback-item .rating {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Header with Logo -->
    <div class="header">
        <img src="images/logo1.jpg" alt="Mega City Cab Logo">
        <span>Customer Dashboard - Mega City Cab 🚖</span>
    </div>
    
    <!-- Sidebar with Options -->
    <div class="sidebar">
        <a href="customerDashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
        <a href="booking.jsp"><i class="fas fa-car"></i> Book a Ride</a>
        <a href="#profile"><i class="fas fa-user-edit"></i> Update Profile</a>
        <a href="homepage.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <!-- Profile Section (Right Side and Scrollable) -->
    <div class="profile-section">
        <div class="card" id="profile">
            <h3>My Profile</h3>
            <c:set var="cus" value="${customer}"/>
            <form action="upreg.jsp" method="post">
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label"><b>Reg Number</b></label>
                    <input type="text" class="form-control" id="formGroupExampleInput" name="regno" value="${cus.regno}" placeholder="registration number">
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label"><b>Name</b></label>
                    <input type="text" class="form-control" id="formGroupExampleInput" name="name" value="${cus.name}" placeholder="name">
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label"><b>Address</b></label>
                    <input type="text" class="form-control" id="formGroupExampleInput" name="address" value="${cus.address}" placeholder="address">
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label"><b>NIC</b></label>
                    <input type="number" class="form-control" id="formGroupExampleInput" name="nic" value="${cus.nic}" placeholder="nic">
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label"><b>Contact Number</b></label>
                    <input type="text" class="form-control" id="formGroupExampleInput" name="tpno" value="${cus.tpno}" placeholder="user name">
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label"><b>UserName</b></label>
                    <input type="password" class="form-control" id="formGroupExampleInput" name="username" value="${cus.username}" placeholder="password">
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label"><b>Password</b></label>
                    <input type="password" class="form-control" id="formGroupExampleInput" name="pass" value="${cus.pass}" placeholder="password">
                </div>
                <button type="submit" class="btn btn-danger">Update</button>
            </form>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h2>Hello, ${cus.name}!</h2> <!-- Display customer name -->

        <!-- Available Vehicles Section -->
        <div class="card">
            <h3>Available Vehicles</h3>
            <div id="vehicleList">
                <div class="vehicle-item">
                    <i class="fas fa-taxi"></i> <!-- TukTuk icon -->
                    <div>
                        <p><strong>TukTuk</strong> - Compact and affordable rides for short distances.</p>
                    </div>
                </div>
                <div class="vehicle-item">
                    <i class="fas fa-car"></i> <!-- Car icon -->
                    <div>
                        <p><strong>Car</strong> - Comfortable rides for everyday travel.</p>
                    </div>
                </div>
                <div class="vehicle-item">
                    <i class="fas fa-shuttle-van"></i> <!-- MiniVan icon -->
                    <div>
                        <p><strong>MiniVan</strong> - Spacious rides for small groups.</p>
                    </div>
                </div>
                <div class="vehicle-item">
                    <i class="fas fa-bus"></i> <!-- Van icon -->
                    <div>
                        <p><strong>Van</strong> - Ideal for large groups or luggage.</p>
                    </div>
                </div>
                <div class="vehicle-item">
                    <i class="fas fa-truck-monster"></i> <!-- Jeep icon -->
                    <div>
                        <p><strong>Jeep</strong> - Rugged rides for adventurous trips.</p>
                    </div>
                </div>
                <div class="vehicle-item">
                    <i class="fas fa-taxi"></i> <!-- Cab icon -->
                    <div>
                        <p><strong>Cab</strong> - Quick and reliable city rides.</p>
                    </div>
                </div>
                <div class="vehicle-item">
                    <i class="fas fa-truck"></i> <!-- Lorry icon -->
                    <div>
                        <p><strong>Lorry</strong> - Heavy-duty rides for cargo transport.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Customer Feedback Section -->
        <div class="card">
            <h3>Customer Feedback</h3>
            <div id="feedbackList">
                <div class="feedback-item">
                    <p><strong>Kasuni Rajapaksha:</strong> Great service! The driver was very professional.</p>
                    <p class="rating">★★★★★</p>
                </div>
                <div class="feedback-item">
                    <p><strong>Dheshanth Vigneshwaran:</strong> The cab was clean and arrived on time.</p>
                    <p class="rating">★★★★☆</p>
                </div>
                <div class="feedback-item">
                    <p><strong>Ananda Bandara:</strong> Excellent experience! Highly recommend.</p>
                    <p class="rating">★★★★★</p>
                </div>
                <!-- Add more feedback items dynamically from the database -->
            </div>
        </div>

        <!-- Top Rated Drivers Section -->
        <div class="card">
            <h3>Top Rated Drivers</h3>
            <div id="driverList">
                <div class="driver-item">
                    <img src="images/driver1.jpg" alt="Driver 1">
                    <div>
                        <p><strong>Driver Name:</strong> Kapila Siriwardana</p>
                        <p><strong>Rating:</strong> <span class="rating">★★★★★</span></p>
                    </div>
                </div>
                <div class="driver-item">
                    <img src="images/driver2.jpg" alt="Driver 2">
                    <div>
                        <p><strong>Driver Name:</strong> Nimal Bandara</p>
                        <p><strong>Rating:</strong> <span class="rating">★★★★★</span></p>
                    </div>
                </div>
                <div class="driver-item">
                    <img src="images/driver3.jpg" alt="Driver 3">
                    <div>
                        <p><strong>Driver Name:</strong> Chamara Herath</p>
                        <p><strong>Rating:</strong> <span class="rating">★★★★★</span></p>
                    </div>
                </div>
                <!-- Add more driver items dynamically from the database -->
            </div>
        </div>
    </div>
</body>
</html>