<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help - Mega City Cab</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            color: #000;
        }
        .help-header {
            background: #ffcc00;
            color: black;
            text-align: center;
            padding: 40px 0;
            font-weight: bold;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .help-content {
            padding: 30px;
            animation: fadeIn 1s ease-in-out;
        }
        .help-content h2, .help-content h3 {
            color: black;
            font-weight: bold;
        }
        .help-content p, ul {
            font-size: 18px;
            line-height: 1.6;
        }
        .help-faq {
            margin-top: 40px;
        }
        .faq-card {
            margin: 15px 0;
            padding: 15px;
            border: 2px solid #ffcc00;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }
        .faq-card:hover {
            transform: scale(1.05);
        }
        .contact-section {
            margin-top: 50px;
            text-align: center;
            padding: 30px;
            background: #ffcc00;
            color: black;
            border-radius: 10px;
        }
        footer {
            background: black;
            color: white;
            text-align: center;
            padding: 10px;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <div class="help-header">
        <h1>Help & Support</h1>
        <p>We are here to assist you with any questions about Mega City Cab</p>
    </div>

    <!-- Help Content Section -->
    <div class="help-content container">
        <h2>Welcome to Mega City Cab Help</h2>
        <p>Mega City Cab is a popular cab service in Colombo, offering reliable and convenient transportation. We have a fully computerized system to manage bookings, billing, and customer support.</p>

        <h3>How to Book a Cab?</h3>
        <p>Visit our website, enter your details in the booking form, and receive a unique booking number for tracking your ride.</p>

        <h3>Customer Registration Details</h3>
        <ul>
            <li>Registration Number</li>
            <li>Customer Name</li>
            <li>Customer Address</li>
            <li>National Identity Card (NIC) Number</li>
            <li>Phone Number</li>
            <li>Enter Username</li>
            <li>Enter Password</li>
            
        </ul>

        <h3>How Are Bills Calculated?</h3>
        <p>Billing is based on distance, ride type, and additional fees (if applicable). Transparent pricing is our priority.</p>

        <h3>Booking Number</h3>
        <p>Each booking receives a unique number for tracking purposes.</p>

        <div class="help-faq">
            <h3>Frequently Asked Questions (FAQs)</h3>
            <div class="faq-card">
                <h5>Q1: How do I reset my password?</h5>
                <p>Click "Forgot Password" on the login page to reset your password.</p>
            </div>
            <div class="faq-card">
                <h5>Q2: How can I cancel a booking?</h5>
                <p>Use the "Cancel Booking" option in your dashboard or contact support.</p>
            </div>
            <div class="faq-card">
                <h5>Q3: Can I book a ride for someone else?</h5>
                <p>Yes, just enter their details when booking.</p>
            </div>
            <div class="faq-card">
                <h5>Q4: What if my cab arrives late?</h5>
                <p>Contact customer support for assistance.</p>
            </div>
        </div>
    </div>

    <!-- Contact Section -->
    <div class="contact-section">
        <h3>Need More Help?</h3>
        <p>Contact us: <strong>+94 76 484 8133</strong> | Email: <strong>support@megacitycab.com</strong></p>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Mega City Cab. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
