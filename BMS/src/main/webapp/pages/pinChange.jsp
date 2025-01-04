<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PIN Change</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #ff4500, #ff6347);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            width: 90%;
            max-width: 400px;
            background: #1a1a1a;
            border-radius: 15px;
            text-align: center;
            padding: 30px 20px;
            color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .form-container h1 {
            color: #fdd835;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .form-container input {
            width: calc(100% - 40px);
            padding: 12px 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
            outline: none;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container input:focus {
            border-color: #ff4500;
            box-shadow: 0 0 5px rgba(255, 69, 0, 0.5);
        }

        .form-container button {
            width: calc(100% - 40px);
            padding: 12px 10px;
            background: #ff4500;
            color: white;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .form-container button:hover {
            background: #fdd835;
            color: black;
            transform: translateY(-2px);
        }

        .form-container button:active {
            transform: translateY(2px);
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px 15px;
            }

            .form-container h1 {
                font-size: 20px;
            }

            .form-container button {
                font-size: 16px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Change PIN</h1>
        <form action="processPinChange" method="post">
            <input 
                type="password" 
                name="oldPin" 
                placeholder="Enter Old PIN" 
                required 
                minlength="4" 
                maxlength="6" 
                aria-label="Enter your old PIN">
            <input 
                type="password" 
                name="newPin" 
                placeholder="Enter New PIN" 
                required 
                minlength="4" 
                maxlength="6" 
                aria-label="Enter your new PIN">
            <button type="submit">Change PIN</button>
        </form>
    </div>
</body>
</html>
