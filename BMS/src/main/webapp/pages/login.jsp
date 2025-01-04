<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ATM Login</title>
<style>
    /* General Styles */
    body {
        font-family: 'Roboto', sans-serif;
        background: radial-gradient(circle, #1e3c72, #2a5298);
        color: white;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .atm-container {
        background: #0b1a33;
        border-radius: 15px;
        padding: 30px 20px;
        width: 90%;
        max-width: 400px;
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
        text-align: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .atm-container:hover {
        transform: scale(1.02);
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
    }

    .atm-container h1 {
        font-size: 26px;
        margin-bottom: 20px;
        color: #00ffcc;
    }

    .atm-container input[type="number"],
    .atm-container input[type="password"],
    .atm-container input[type="submit"] {
        width: 90%;
        padding: 12px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    .atm-container input[type="number"],
    .atm-container input[type="password"] {
        background: #001f33;
        color: white;
        outline: none;
        transition: border 0.3s ease, box-shadow 0.3s ease;
    }

    .atm-container input[type="number"]:focus,
    .atm-container input[type="password"]:focus {
        border: 2px solid #00ffcc;
        box-shadow: 0 0 8px rgba(0, 255, 204, 0.8);
    }

    .atm-container input[type="submit"] {
        background: #00ffcc;
        color: #0b1a33;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.2s ease;
    }

    .atm-container input[type="submit"]:hover {
        background: #00e6b8;
        transform: scale(1.05);
    }

    .atm-screen {
        border: 3px solid #00ffcc;
        border-radius: 10px;
        background: #001a33;
        padding: 15px;
        margin-bottom: 20px;
        box-shadow: inset 0 0 15px rgba(0, 255, 204, 0.6);
        font-size: 14px;
        color: #00ffcc;
    }

    /* Media Queries for Responsiveness */
    @media (max-width: 768px) {
        .atm-container {
            padding: 20px;
        }

        .atm-container h1 {
            font-size: 22px;
        }

        .atm-container input[type="number"],
        .atm-container input[type="password"],
        .atm-container input[type="submit"] {
            font-size: 14px;
        }

        .atm-screen {
            font-size: 12px;
        }
    }

    @media (max-width: 480px) {
        .atm-container {
            width: 95%;
        }

        .atm-container h1 {
            font-size: 20px;
        }

        .atm-container input[type="number"],
        .atm-container input[type="password"],
        .atm-container input[type="submit"] {
            font-size: 12px;
        }

        .atm-screen {
            font-size: 10px;
            padding: 10px;
        }
    }
</style>
</head>
<body>
<div class="atm-container">
    <div class="atm-screen">
        <p>Welcome to ATM</p>
        <p>Please enter your Card Number and PIN to continue.</p>
    </div>
    <form action="login" method="post">
        <h1>Login</h1>
        <input type="number" name="cardNo" placeholder="Card Number" required>
        <input type="password" name="pin" placeholder="PIN" required>
        <input type="submit" value="Login">
    </form>
</div>
</body>
</html>
