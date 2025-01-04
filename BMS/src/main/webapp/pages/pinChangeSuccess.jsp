<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PIN Change Success</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #4caf50, #3b9e45);
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            background: #ffffff;
            padding: 30px 20px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 90%;
        }

        .message {
            font-size: 20px;
            font-weight: bold;
            color: #4caf50;
            margin-bottom: 20px;
        }

        input[type="submit"] {
            padding: 12px 20px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        input[type="submit"]:active {
            transform: translateY(1px);
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .message {
                font-size: 18px;
            }

            input[type="submit"] {
                font-size: 14px;
                padding: 10px 15px;
            }
        }
    </style>
    <script>
        window.onload = function () {
            alert("PIN changed successfully!");
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="message">
            Your PIN has been successfully changed!
        </div>
        <form action="dashboard">
            <input type="submit" value="Go to Dashboard">
        </form>
    </div>
</body>
</html>
