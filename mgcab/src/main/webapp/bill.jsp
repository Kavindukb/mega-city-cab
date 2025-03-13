<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff; /* White background */
            color: #000; /* Black text for readability */
            text-align: center;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border: 3px solid #ffcc00; /* Yellow border */
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            font-weight: bold;
            color: #000; /* Black text */
        }
        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 2px solid #ffcc00; /* Yellow border */
            border-radius: 5px;
            background-color: #fff;
            color: #000;
        }
        button {
            background: #ffcc00; /* Yellow background */
            color: black; /* Black text */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }
        button:hover {
            background: #ff9900; /* Darker yellow on hover */
        }
        .error {
            color: red;
            font-weight: bold;
        }
        h2 {
            color: #ffcc00; /* Yellow color for the title */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Generate Bill</h2>
        <form action="BillServlet" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="bookid">Booking ID:</label>
                <input type="text" id="bookid" name="bookid" value="<%= request.getParameter("bookid") != null ? request.getParameter("bookid") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="customer">Customer Name:</label>
                <input type="text" id="customer" name="customer" required>
            </div>
            <div class="form-group">
                <label for="distance">Distance (in kilometers):</label>
                <input type="number" id="distance" name="distance" step="0.1" required>
            </div>
            
            <button type="submit">Generate Bill & Download PDF</button>
        </form>

        <!-- Error Message -->
        <% if (request.getParameter("error") != null) { %>
            <p class="error"><%= request.getParameter("error") %></p>
        <% } %>
    </div>

    <script>
        function validateForm() {
            var distance = document.getElementById("distance").value;
            var rate = document.getElementById("rate").value;

            if (distance <= 0 || isNaN(distance)) {
                alert("Please enter a valid distance.");
                return false;
            }
            if (rate <= 0 || isNaN(rate)) {
                alert("Please enter a valid rate.");
                return false;
            }
            document.getElementById("total").value = (distance * rate).toFixed(2);
            return true;
        }
    </script>
</body>
</html>
