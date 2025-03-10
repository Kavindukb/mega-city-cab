<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><b>About Us - Mega City Cab</b></title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #ffffff; /* White background */
            font-family: 'Arial', sans-serif;
        }
        .about-header {
            background: linear-gradient(to right, #ffd700, #ffa500); /* Yellow gradient */
            color: black; /* Black text */
            text-align: center;
            padding: 60px 0;
            position: relative;
        }
        .about-header img {
            height: 60px;
            width: auto;
            margin-bottom: 15px;
        }
        .about-header h1 {
            font-size: 36px;
            font-weight: bold;
        }
        .about-header p {
            font-size: 20px;
            margin-top: 10px;
        }
        .back-button {
            position: absolute;
            top: 20px;
            right: 20px;
            background: #333333; /* Black background */
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
        }
        .back-button:hover {
            background: #ffa500; /* Yellow hover */
            color: black;
        }
        .about-content {
            padding: 40px 20px;
            background: #ffffff; /* White background */
        }
        .about-content h2 {
            font-size: 30px;
            margin-bottom: 20px;
            color: #333333; /* Black text */
        }
        .about-content h3 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333333; /* Black text */
        }
        .about-content p {
            font-size: 18px;
            line-height: 1.6;
            color: #555555; /* Dark gray text */
        }
        .services-section {
            margin-top: 40px;
        }
        .services-section .service-card {
            border: 1px solid #ddd;
            margin: 15px 0;
            padding: 20px;
            border-radius: 8px;
            background-color: #f9f9f9;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .services-section .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }
        .team-section {
            margin-top: 40px;
            padding: 40px 20px;
            background: #f9f9f9; /* Light gray background */
        }
        .team-section h2 {
            font-size: 30px;
            margin-bottom: 20px;
            color: #333333; /* Black text */
            text-align: center;
        }
        .team-member {
            text-align: center;
            margin-bottom: 20px;
        }
        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 4px solid #ffa500; /* Yellow border */
        }
        .team-member h4 {
            font-size: 22px;
            margin-bottom: 5px;
            color: #333333; /* Black text */
        }
        .team-member p {
            font-size: 16px;
            color: #555555; /* Dark gray text */
        }
        .footer {
            background: #333333; /* Black background */
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }
        .footer .social-icons a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
            font-size: 24px;
            transition: 0.3s;
        }
        .footer .social-icons a:hover {
            color: #ffa500; /* Yellow hover */
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="about-header">
        <img src="images/logo1.jpg" alt="Mega City Cab Logo">
        <h1>About Mega City Cab</h1>
        <p>Your Reliable Ride in Colombo</p>
        <a href="homepage.jsp" class="back-button">Back to Home</a>
    </div>

    <!-- About Content Section -->
    <div class="about-content">
        <h2><b>Welcome to Mega City Cab</b></h2>
        <p>We are a leading cab service in Colombo City, offering comfortable and reliable rides to thousands of customers every month. Our mission is to provide the best cab service experience by focusing on customer satisfaction, ease of booking, and transparent billing.</p>

        <p>Our services cater to a wide range of customer needs, from daily commutes to special bookings for events. We are committed to providing timely services and ensuring the safety and comfort of our passengers.</p>

        <h3><b>Our Story</b></h3>
        <p>Mega City Cab has grown significantly over the years. Initially, we operated using manual systems to manage customer orders and details. However, as the demand for our services increased, we realized the need for a more efficient, computerized system. Our current system helps us manage customer bookings, calculate bills, and assign unique booking numbers for every transaction.</p>

        <p>Every new customer is registered in our system, where we capture vital information such as customer registration number, name, address, and NIC. This data allows us to streamline operations and ensure that our customers receive the best experience possible.</p>

        <h3><b>Our Services</b></h3>
        <div class="services-section">
            <div class="service-card">
                <h4>Customer Booking Management</h4>
                <p>Our system allows easy and efficient booking management, ensuring customers can book rides at their convenience. Every booking is assigned a unique number for tracking and managing customer orders.</p>
            </div>

            <div class="service-card">
                <h4>Transparent Billing</h4>
                <p>With our computerized system, we provide clear and accurate billing details, ensuring transparency in pricing. Customers receive itemized bills based on distance, time, and service type.</p>
            </div>

            <div class="service-card">
                <h4>Customer Registration</h4>
                <p>New customers are registered in our system, capturing essential details such as registration number, name, address, and NIC. This helps us maintain a smooth and efficient customer experience.</p>
            </div>

            <div class="service-card">
                <h4>Real-Time Booking Tracking</h4>
                <p>Our system provides real-time updates to customers on the status of their bookings, ensuring they are always informed about their ride's progress.</p>
            </div>
        </div>
    </div>

    <!-- Our Team Section -->
    <div class="team-section">
        <h2><b>Our Team</b></h2>
        <div class="container">
            <div class="row">
                <div class="col-md-4 team-member">
                    <img src="images/ceo.jpg" alt="CEO">
                    <h4>Kavindu Bandara</h4>
                    <p>CEO</p>
                </div>
                <div class="col-md-4 team-member">
                    <img src="images/manager.jpg" alt="Manager">
                    <h4>Maalan Sangeeth</h4>
                    <p>Manager</p>
                </div>
                <div class="col-md-4 team-member">
                    <img src="images/executive.jpg" alt="Executive">
                    <h4>Thulakshana Dissanayake</h4> 
                    <p>Executive</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin"></i></a>
        </div>
        <p>&copy; 2025 Mega City Cab. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>