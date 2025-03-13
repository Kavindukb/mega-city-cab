<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Driver - Mega City Cab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            background: #fff;
            font-family: 'Arial', sans-serif;
            color: #000;
        }
        .card {
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border: 3px solid #ffcc00;
        }
        .card-header {
            background: #ffcc00;
            color: black;
            font-size: 22px;
            text-align: center;
            font-weight: bold;
            border-radius: 10px 10px 0 0;
            padding: 15px;
        }
        .form-control {
            border-radius: 5px;
            border: 2px solid #ffcc00;
        }
        .btn-submit {
            background: #ffcc00;
            color: black;
            font-size: 18px;
            width: 100%;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-submit:hover {
            background: #ff9900;
        }
        .profile-img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #ffcc00;
            transition: transform 0.3s ease-in-out;
        }
        .profile-img:hover {
            transform: scale(1.1);
        }
        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">🚖 Add New Driver</div>
                <div class="card-body">
                    <div class="text-center">
                        <img src="images/driver.jpg" class="profile-img" alt="Driver Profile Image">
                        <h4 class="mt-3"><b>Add Driver</b></h4>
                        <span class="badge bg-warning text-dark">Account Status: Active</span>
                    </div>
                    <hr>

                    <form method="post" action="adddriver">
                        <div class="mb-3">
                            <label class="form-label">Driver ID</label>
                            <input type="text" class="form-control" name="drid" placeholder="Enter Driver ID" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Name</label>
                            <input type="text" class="form-control" name="dname" placeholder="Enter Full Name" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Address</label>
                            <input type="text" class="form-control" name="daddress" placeholder="Enter Address" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Contact No</label>
                            <input type="tel" class="form-control" name="dtpno" placeholder="Enter Contact No" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver NIC No</label>
                            <input type="text" class="form-control" name="dnic" placeholder="Enter NIC No" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Licence No</label>
                            <input type="text" class="form-control" name="dlno" placeholder="Enter Licence No" required>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-submit">🚀 Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>