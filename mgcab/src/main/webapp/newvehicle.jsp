<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Vehicle</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        /* Global Styles */
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 40px auto;
            background: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-out;
        }

        .card-header {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            background-color: #ffc107; /* Yellow */
            color: #000; /* Black */
            padding: 15px;
            border-radius: 15px 15px 0 0;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            animation: slideInFromTop 1s ease-out;
        }

        .vehicle-selection img {
            width: 90px;
            height: 70px;
            object-fit: cover;
            border: 2px solid transparent;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            animation: bounceIn 1s ease-out;
        }

        .vehicle-selection input[type="radio"] {
            display: none;
        }

        .vehicle-selection input[type="radio"]:checked + img {
            border: 2px solid #ffc107; /* Yellow */
            box-shadow: 0px 0px 10px rgba(255, 193, 7, 0.5);
        }

        .vehicle-selection img:hover {
            transform: scale(1.1);
            transition: transform 0.3s;
        }

        .vehicle-selection label {
            text-align: center;
            width: 100px;
            margin-bottom: 10px;
            cursor: pointer;
        }

        .vehicle-selection p {
            color: #000; /* Black */
            font-size: 14px;
            margin-top: 5px;
        }

        .form-label {
            color: #000; /* Black */
            font-weight: bold;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ccc;
            transition: border 0.3s;
        }

        .form-control:focus {
            border-color: #ffc107; /* Yellow */
            box-shadow: 0px 0px 5px rgba(255, 193, 7, 0.5);
        }

        .btn-danger {
            background-color: #ffc107; /* Yellow */
            color: #000; /* Black */
            border: none;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn-danger:hover {
            background-color: #ffca28; /* Lighter yellow */
            transform: scale(1.05);
        }

        .img-thumbnail {
            border-radius: 50%;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideInFromTop {
            from {
                transform: translateY(-30px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes bounceIn {
            0% {
                transform: scale(0);
                opacity: 0;
            }
            60% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
        }

        /* Responsive design */
        @media (max-width: 576px) {
            .container {
                padding: 15px;
            }
            .vehicle-selection img {
                width: 70px;
                height: 55px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card-header">🚗 Add New Vehicle</div>
    <div class="card-body">
        
        <form method="post" action="addvehicle">
            
            <div class="mb-3 text-center">
                <img src="images/vehicle.jpg" class="img-thumbnail" alt="profile image" width="120px">
                <h5 class="mt-2"><b>Add vehicle</b></h5>
                <span class="badge bg-success">Account Status: Active</span>
            </div>

            <hr>

            <!-- Vehicle No -->
            <div class="mb-3">
                <label class="form-label">Vehicle No</label>
                <input type="text" class="form-control" name="vno" placeholder="Enter Vehicle No" required>
            </div>

            <!-- Vehicle Category Selection with Images -->
            <div class="mb-3">
                <label class="form-label">Vehicle Category</label>
                <div class="d-flex flex-wrap justify-content-between vehicle-selection">
                    <label>
                        <input type="radio" name="vcat" value="tuktuk" required>
                        <img src="images/tuktuk.jpg" alt="Tuktuk">
                        <p>Tuktuk</p>
                    </label>
                    <label> 
                        <input type="radio" name="vcat" value="car">
                        <img src="images/car.jpg" alt="Car">
                        <p>Car</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="minivan">
                        <img src="images/minivan.jpg" alt="Minivan">
                        <p>Minivan</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="van">
                        <img src="images/van.jpg" alt="Van">
                        <p>Van</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="jeep">
                        <img src="images/jeep.jpg" alt="Jeep">
                        <p>Jeep</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="cab">
                        <img src="images/cab.jpg" alt="Cab">
                        <p>Cab</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="lorry">
                        <img src="images/lorry.jpg" alt="Lorry">
                        <p>Lorry</p>
                    </label>
                </div>
            </div>

            <!-- Vehicle Model -->
            <div class="mb-3">
                <label class="form-label">Vehicle Model</label>
                <input type="text" class="form-control" name="vmodel" placeholder="Enter Vehicle Model" required>
            </div>

            <!-- Vehicle Brand -->
            <div class="mb-3">
                <label class="form-label">Vehicle Brand</label>
                <input type="text" class="form-control" name="vbrand" placeholder="Enter Vehicle Brand" required>
            </div>

            <!-- Vehicle Color -->
            <div class="mb-3">
                <label class="form-label">Vehicle Color</label>
                <input type="text" class="form-control" name="vcolor" placeholder="Enter Vehicle Color" required>
            </div>

            <!-- Vehicle Chassis No -->
            <div class="mb-3">
                <label class="form-label">Vehicle Chassis No</label>
                <input type="text" class="form-control" name="vchasi" placeholder="Enter Vehicle Chassis No" required>
            </div>

            <!-- Submit Button -->
            <div class="mb-3 text-center">
                <button type="submit" class="btn btn-danger w-100">🚀 Submit</button>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
