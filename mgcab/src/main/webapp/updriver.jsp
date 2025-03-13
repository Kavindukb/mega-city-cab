<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Profile - Mega City Cab</title>

    <!-- Bootstrap for Styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            color: #333;
        }
        .container-fluid {
            margin-top: 50px;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            background: #fff;
            padding: 30px;
        }
        .card-img-top {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 5px solid #fdd835;
            margin-bottom: 20px;
        }
        h4 {
            color: #fdd835;
            font-weight: bold;
        }
        .text-muted {
            font-size: 14px;
        }
        .btn-submit {
            background-color: #fdd835;
            color: black;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
            width: 100%;
            font-weight: bold;
        }
        .btn-submit:hover {
            background-color: #fbc02d;
            transform: scale(1.05);
        }
        .form-label {
            font-weight: bold;
            color: #333;
        }
        .card-body {
            text-align: center;
        }
        .text-start {
            text-align: left;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #ddd;
            padding: 10px;
            font-size: 14px;
            transition: border-color 0.3s;
        }
        .form-control:focus {
            border-color: #fdd835;
            box-shadow: 0 0 5px rgba(253, 216, 53, 0.6);
        }
        .hr-divider {
            border: 0;
            height: 1px;
            background-color: #ddd;
            margin: 20px 0;
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <img src="images/update.jpg" class="card-img-top mb-3" alt="Profile Image"> 
                    <h4><b>Update Driver</b></h4>
                    <span class="text-muted">Account Status: <b class="text-success">Active</b></span>
                    <hr class="hr-divider" />

                    <form method="post" action="driverup">
                        <div class="mb-3 text-start">
                            <label class="form-label">Driver ID</label>
                            <input type="text" class="form-control" name="drid" placeholder="Enter Your ID" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Driver Name</label>
                            <input type="text" class="form-control" name="dname" placeholder="Enter Your Name" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Driver Address</label>
                            <input type="text" class="form-control" name="daddress" placeholder="Enter Your Address" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Driver Contact No</label>
                            <input type="number" class="form-control" name="dtpno" placeholder="Enter Your Contact No" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Driver NIC No</label>
                            <input type="text" class="form-control" name="dnic" placeholder="Enter Your NIC No" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Driver Licence No</label>
                            <input type="text" class="form-control" name="dlno" placeholder="Enter Your Licence No" required>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn-submit">Submit</button>
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
