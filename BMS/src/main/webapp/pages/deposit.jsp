<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #004f9e, #002b5c);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            width: 400px;
            background: #1a1a1a;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.7);
            padding: 20px;
            text-align: center;
        }

        .form-container h1 {
            color: #e6e600;
            margin-bottom: 20px;
        }

        .form-container input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: none;
            font-size: 16px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background: #004f9e;
            color: white;
            border: none;
            font-size: 18px;
            font-weight: bold;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .form-container button:hover {
            background: #e6e600;
            color: black;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Deposit Money</h1>
        <form action="processDeposit" method="post">
            <input type="number" name="amount" placeholder="Enter amount" required>
            <button type="submit">Deposit</button>
        </form>
    </div>
</body>
</html>
