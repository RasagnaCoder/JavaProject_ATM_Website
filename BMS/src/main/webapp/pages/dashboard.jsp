<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM Dashboard</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background: radial-gradient(circle, #001f3f, #01183f);
            color: white;
            margin: 0;
            padding: 0;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            box-sizing: border-box;
        }

        .container {
            background-color: #012a4a;
            padding: 40px 20px;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
            width: 90%;
            max-width: 400px;
        }

        .container h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
            color: #00ffcc;
        }

        .container h2 {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #80dfff;
        }

        .button {
            display: block;
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            font-size: 1.2rem;
            color: white;
            background-color: #0074D9;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .button:hover {
            background-color: #0056a3;
            transform: scale(1.05);
        }

        .button.exit {
            background-color: #FF4136;
        }

        .button.exit:hover {
            background-color: #cc3328;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 30px 15px;
            }

            .container h1 {
                font-size: 2rem;
            }

            .container h2 {
                font-size: 1rem;
            }

            .button {
                font-size: 1rem;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 20px 10px;
            }

            .container h1 {
                font-size: 1.5rem;
            }

            .container h2 {
                font-size: 0.9rem;
            }

            .button {
                font-size: 0.9rem;
                padding: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to ATM</h1>
        <h2>Please choose an option</h2>
        <a href="deposit" class="button">Deposit</a>
        <a href="pinChange" class="button">Pin Change</a>
        <a href="balanceInquiry" class="button">Balance Inquiry</a>
        <a href="cashWithdrawal" class="button">Cash Withdrawal</a>
        <a href="fastCash" class="button">Fast Cash</a>
        <a href="exit" class="button exit">Exit</a>
    </div>
</body>
</html>
