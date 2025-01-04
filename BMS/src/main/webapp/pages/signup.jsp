<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container */
        .signup-container {
            background: rgba(0, 0, 0, 0.7);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 400px;
        }

        .signup-container h1 {
            text-align: center;
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
            color: #ffc107;
        }

        /* Form Styles */
        .signup-form label {
            display: block;
            font-size: 1rem;
            margin-bottom: 0.5rem;
        }

        .signup-form input {
            width: 100%;
            padding: 0.7rem;
            margin-bottom: 1rem;
            border: none;
            border-radius: 5px;
            background: #f4f4f4;
            font-size: 1rem;
        }

        .signup-form input:focus {
            outline: none;
            border: 2px solid #ffc107;
        }

        .signup-form button {
            width: 100%;
            padding: 0.7rem;
            background: #ffc107;
            color: #000;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
        }

        .signup-form button:hover {
            background: #ffcd38;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .signup-container {
                padding: 1.5rem;
            }

            .signup-container h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>Create Account</h1>
        <form action="signup" method="post" class="signup-form">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required aria-label="Full name" />

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required aria-label="Email address" />

            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required aria-label="Phone number" pattern="^\d{10}$" title="Please enter a 10-digit phone number" />

            <label for="cardNo">Card Number</label>
            <input type="number" id="cardNo" name="cardNo" placeholder="Enter your card number" required aria-label="Card number" minlength="13" maxlength="16" />

            <label for="pin">PIN</label>
            <input type="password" id="pin" name="pin" placeholder="Set your PIN" required aria-label="Set your PIN" minlength="4" maxlength="6" />

            <button type="submit">Signup</button>
        </form>
    </div>
</body>
</html>
