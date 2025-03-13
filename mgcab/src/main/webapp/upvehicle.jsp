<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Vehicle - Mega City Cab</title>

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
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
            padding: 30px;
        }
        .card-img-top {
            width: 120px;
            border-radius: 50%;
            border: 4px solid #ffcc00;
        }
        h4 {
            color: #ffcc00;
            font-weight: bold;
        }
        .btn-submit {
            background-color: #ffcc00;
            color: #000;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            transition: 0.3s;
            width: 100%;
            font-size: 16px;
        }
        .btn-submit:hover {
            background-color: #e6b800;
            cursor: pointer;
        }
        .card-body {
            text-align: center;
        }
        .form-label {
            font-weight: bold;
            color: #333;
        }
        input.form-control {
            border-radius: 5px;
            border: 1px solid #ccc;
            padding: 10px;
        }
        .text-muted {
            font-size: 14px;
            color: #666;
        }
        .hr-line {
            border: 1px solid #ffcc00;
            width: 50%;
            margin: 15px auto;
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <div class="card shadow-sm">
                <div class="card-body">
                    <img src="images/update.jpg" class="card-img-top mb-3" alt="Vehicle Image">
                    <h4>Update Vehicle</h4>
                    <span class="text-muted">Account Status: <b class="text-success">Active</b></span>
                    <hr class="hr-line"/>

                    <form method="post" action="vehicleup">
                        <div class="mb-3 text-start">
                            <label class="form-label">Vehicle No</label>
                            <input type="text" class="form-control" name="vno" placeholder="Enter Vehicle No" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Vehicle Category</label>
                            <input type="text" class="form-control" name="vcat" placeholder="Enter Vehicle Category" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Vehicle Model</label>
                            <input type="text" class="form-control" name="vmodel" placeholder="Enter Vehicle Model" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Vehicle Brand</label>
                            <input type="text" class="form-control" name="vbrand" placeholder="Enter Vehicle Brand" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Vehicle Color</label>
                            <input type="text" class="form-control" name="vcolor" placeholder="Enter Vehicle Color" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label class="form-label">Vehicle Chassis No</label>
                            <input type="text" class="form-control" name="vchasi" placeholder="Enter Vehicle Chassis No" required>
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
