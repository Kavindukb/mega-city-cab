<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Mega City Cab</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #ffffff; /* White background */
            font-family: 'Arial', sans-serif;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #ffffff; /* White background */
        }
        .card-header {
            background: linear-gradient(to right, #ffd700, #ffa500); /* Yellow gradient */
            color: black; /* Black text */
            text-align: center;
            padding: 20px;
            border-radius: 10px 10px 0 0;
        }
        .card-header img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: 4px solid #ffffff; /* White border */
        }
        .card-body {
            padding: 30px;
        }
        .form-label {
            font-weight: bold;
            color: #333333; /* Black text */
        }
        .form-control {
            border: 1px solid #cccccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 15px;
        }
        .form-control:focus {
            border-color: #ffa500; /* Yellow border on focus */
            box-shadow: 0 0 5px rgba(255, 165, 0, 0.5); /* Yellow shadow */
        }
        .btn-submit {
            background: #ffa500; /* Yellow button */
            color: black; /* Black text */
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            font-size: 16px;
            font-weight: bold;
            transition: 0.3s;
            width: 100%;
        }
        .btn-submit:hover {
            background: #ff8c00; /* Darker yellow on hover */
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #555555; /* Dark gray text */
        }
        .footer a {
            color: #ffa500; /* Yellow link */
            text-decoration: none;
        }
        .footer a:hover {
            color: #ff8c00; /* Darker yellow on hover */
        }
    </style>
</head>
<body>

<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow-sm">
                <!-- Card Header -->
                <div class="card-header">
                    <img src="images/1.jpg" alt="Profile Image">
                    <h4 class="mt-3"><b>User Login</b></h4>
                    <span>Account Status: Active</span>
                </div>

                <!-- Card Body -->
                <div class="card-body">
                    <!-- Login Form -->
                    <form method="post" action="log">
                        <div class="mb-3">
                            <label class="form-label">User Name</label>
                            <input type="text" class="form-control" name="username" placeholder="Enter User Name" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="pass" placeholder="Enter Password" required>
                        </div>

                        <!-- Submit Button -->
                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn-submit">Submit</button>
                        </div>
                    </form>

                    <!-- Footer Links -->
                    <div class="footer mt-4">
                        <p>Don't have an account? <a href="regs.jsp">Register here</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>