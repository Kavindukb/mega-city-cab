<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<style>
    body {
        background-color: #ffffff; /* White background */
        font-family: 'Arial', sans-serif;
    }
    .card {
        border: none;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #ffffff; /* White card background */
    }
    .card-img-top {
        border-radius: 50%;
        border: 3px solid #ffd700; /* Yellow border */
        width: 100px;
        height: 100px;
        object-fit: cover;
    }
    .card h4 {
        color: #333333; /* Black text */
        font-weight: bold;
    }
    .card span {
        color: #ffa500; /* Yellow text */
        font-weight: bold;
    }
    .form-label {
        color: #333333; /* Black text */
        font-weight: bold;
    }
    .form-control {
        border: 1px solid #cccccc; /* Light gray border */
        border-radius: 5px;
        padding: 10px;
    }
    .form-control:focus {
        border-color: #ffa500; /* Yellow border on focus */
        box-shadow: 0 0 5px rgba(255, 165, 0, 0.5); /* Yellow shadow */
    }
    .btn-danger {
        background-color: #ffa500; /* Yellow button */
        border: none;
        color: #000000; /* Black text */
        font-weight: bold;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .btn-danger:hover {
        background-color: #ff8c00; /* Darker yellow on hover */
    }
    hr {
        border-top: 2px solid #ffa500; /* Yellow horizontal line */
    }
</style>
</head>
<body>
<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow-sm">
                <div class="card-body">
                    <center>
                        <img src="images/update.jpg" class="card-img-top" alt="profile image">
                        <h4 class="mt-3"><b>User Profile</b></h4>
                        <span>Account Status: Active</span>
                    </center>
                    <hr />

                    <!-- Form -->
                    <form method="post" action="regup">
                        <div class="mb-3">
                            <label class="form-label">Register No</label>
                            <input type="text" class="form-control" name="regno" placeholder="Enter Your Register No">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Enter Your Name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" placeholder="Enter Your Address">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">NIC No</label>
                            <input type="text" class="form-control" name="nic" placeholder="Enter Your NIC No">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Contact No</label>
                            <input type="text" class="form-control" name="tpno" placeholder="Enter Your Contact No">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">User Name</label>
                            <input type="text" class="form-control" name="username" placeholder="Enter User Name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="pass" placeholder="Enter Password">
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-danger w-100">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>