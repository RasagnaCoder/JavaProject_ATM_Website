<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fast Cash</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .form-container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 30px;
        }
        .button-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            margin-top: 20px;
        }
        .button-grid button {
            background-color: #007bff;
            color: white;
            font-size: 18px;
            padding: 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .button-grid button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Fast Cash</h1>
        <form action="processFastCash" method="POST">
            <!-- Hidden form inputs for amount values -->
            <div class="button-grid">
                <button type="submit" name="amount" value="1000">1000</button>
                <button type="submit" name="amount" value="2000">2000</button>
                <button type="submit" name="amount" value="3000">3000</button>
                <button type="submit" name="amount" value="5000">5000</button>
            </div>
        </form>
    </div>
</body>
</html>
