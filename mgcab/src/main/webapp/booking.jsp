<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Vehicle - Mega City Cab</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            text-align: center;
            color: #000;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border: 3px solid #ffcc00;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            font-weight: bold;
            color: #000;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 2px solid #ffcc00;
            border-radius: 5px;
            background-color: #fff;
            color: #000;
        }
        button {
            background: #ffcc00;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }
        button:hover {
            background: #ff9900;
        }
        .alert {
            margin-top: 15px;
            color: green;
            font-weight: bold;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        .blink {
            animation: blink 1s infinite;
        }
        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0; }
            100% { opacity: 1; }
        }
        .logo {
            width: 100px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="images/logo1.jpg" alt="Mega City Cab" class="logo">
        <h2>Book a Vehicle - Mega City Cab</h2>
        <form action="BookServlet" method="post" onsubmit="return validateForm()">
            <input type="hidden" name="action" value="add">
            <div class="form-group">
                <label for="cusname">Customer Name:</label>
                <input type="text" id="cusname" name="cusname" required>
            </div>
            <div class="form-group">
                <label for="cusconno">Contact Number:</label>
                <input type="text" id="cusconno" name="cusconno" required>
            </div>
            <div class="form-group">
                <label for="cusmail">Email:</label>
                <input type="email" id="cusmail" name="cusmail" required>
            </div>
            <div class="form-group">
                <label for="tripstloc">Trip Start Location:</label>
                <input type="text" id="tripstloc" name="tripstloc" required>
            </div>
            <div class="form-group">
                <label for="tripendloc">Trip End Location:</label>
                <input type="text" id="tripendloc" name="tripendloc" required>
            </div>
            <div class="form-group">
                <label for="vcat">Select Vehicle Category:</label>
                <select name="vcat" id="vcat" required>
                    <option value="Tuktuk">Tuktuk</option>
                    <option value="Car">Car</option>
                    <option value="Minivan">Minivan</option>
                    <option value="Van">Van</option>
                    <option value="Jeep">Jeep</option>
                    <option value="Cab">Cab</option>
                    <option value="Lorry">Lorry</option>
                </select>
            </div>
            <div class="form-group">
                <label for="bookdate">Booking Date:</label>
                <input type="date" id="bookdate" name="bookdate" required>
            </div>
            <button type="submit" class="">BOOK</button>
        </form>

        <!-- Generate Bill Button -->
        <form action="bill.jsp" method="get" style="margin-top: 20px;">
            <div class="form-group">
                <label for="bookid">Enter Booking ID to Generate Bill:</label>
                <input type="text" id="bookid" name="bookid" required>
            </div>
            <button type="submit">Generate Bill</button>
        </form>

        <!-- Success and Error Messages -->
        <% if (request.getParameter("success") != null) { %>
            <p class="alert">Booking successful! Your Booking ID is: <strong><%= request.getParameter("bookid") %></strong></p>
        <% } else if (request.getParameter("error") != null) { %>
            <p class="error">Error occurred. Please try again.</p>
        <% } %>
    </div>

    <script>
        function validateForm() {
            var cusname = document.getElementById("cusname").value;
            var cusconno = document.getElementById("cusconno").value;
            var cusmail = document.getElementById("cusmail").value;
            var tripstloc = document.getElementById("tripstloc").value;
            var tripendloc = document.getElementById("tripendloc").value;
            var bookdate = document.getElementById("bookdate").value;

            if (cusname === "" || cusconno === "" || cusmail === "" || tripstloc === "" || tripendloc === "" || bookdate === "") {
                alert("All fields are required.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
