<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance Inquiry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .balance-box {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 30px 40px;
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        .balance-box h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .balance-box p {
            font-size: 18px;
            margin: 10px 0;
            color: #555;
        }

        .balance-box p span {
            font-weight: bold;
            color: #007bff;
        }

        .btn-back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s ease;
        }

        .btn-back:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        .btn-back:active {
            transform: translateY(1px);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="balance-box">
            <h1>Balance Inquiry</h1>
            <p>Your current balance is: 
                <span>
                    ₹<%= session.getAttribute("balanceAmount") != null ? session.getAttribute("balanceAmount") : "Not Available" %>
                </span>
            </p>
            <p>Last updated on: 
                <span>
                    <%= session.getAttribute("lastUpdated") != null ? session.getAttribute("lastUpdated") : "Not Available" %>
                </span>
            </p>
            <form action="dashboard" method="get">
                <button type="submit" class="btn-back">Go to Dashboard</button>
            </form>
        </div>
    </div>
</body>
</html>
