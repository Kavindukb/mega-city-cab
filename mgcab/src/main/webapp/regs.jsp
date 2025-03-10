<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: #000; /* Black background */
            color: #fff; /* White text */
        }
        .container {
            max-width: 500px;
            margin: 40px auto;
            background: #333; /* Dark gray background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
        }
        .card-header {
            font-size: 22px;
            font-weight: bold;
            text-align: center;
            background: #ffcc00; /* Yellow background */
            color: #000; /* Black text */
            padding: 10px;
            border-radius: 10px 10px 0 0;
        }
        .form-control {
            background: #444; /* Dark gray input background */
            color: #fff; /* White text */
            border: 1px solid #666; /* Gray border */
        }
        .form-control:focus {
            background: #555; /* Slightly lighter gray on focus */
            color: #fff;
            border-color: #ffcc00; /* Yellow border on focus */
        }
        .btn-danger {
            background: #ffcc00; /* Yellow button */
            color: #000; /* Black text */
            border: none;
        }
        .btn-danger:hover {
            background: #ff9900; /* Darker yellow on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card-header">📝 User Registration</div>
        <div class="card-body">
            <div class="text-center mb-3">
                <img src="images/regs.png" class="img-thumbnail" alt="Profile Image" width="120px">
                <h5 class="mt-2"><b>User Profile</b></h5>
                <span class="badge bg-success">Account Status: Active</span>
            </div>
            <hr>
            <form method="post" action="reg">
                <div class="mb-3">
                    <label class="form-label"><b>Register No</b></label>
                    <input type="text" class="form-control" name="regno" placeholder="Enter Your Register No" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><b>Name</b></label>
                    <input type="text" class="form-control" name="name" placeholder="Enter Your Name" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><b>Address</b></label>
                    <input type="text" class="form-control" name="address" placeholder="Enter Your Address" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><b>NIC No</b></label>
                    <input type="text" class="form-control" name="nic" placeholder="Enter Your NIC No" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><b>Contact No</b></label>
                    <input type="tel" class="form-control" name="tpno" placeholder="Enter Your Contact No" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><b>User Name</b></label>
                    <input type="text" class="form-control" name="username" placeholder="Enter User Name" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><b>Password</b></label>
                    <input type="password" class="form-control" name="pass" placeholder="Enter Password" required>
                </div>
                <div class="mb-3 text-center">
                    <button type="submit" class="btn btn-danger w-100">🚀 Register</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>