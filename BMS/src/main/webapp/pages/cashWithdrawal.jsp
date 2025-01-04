<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cash Withdrawal</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f4f4f4, #e2e8f0);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            width: 90%;
            max-width: 500px;
            background-color: #ffffff;
            padding: 30px 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
            transition: box-shadow 0.3s ease, transform 0.2s ease;
        }

        .form-container:hover {
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            transform: translateY(-5px);
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }

        input[type="number"] {
            width: calc(100% - 40px);
            max-width: 400px;
            padding: 12px 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            outline: none;
        }

        input[type="number"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        button {
            padding: 12px 20px;
            font-size: 18px;
            color: white;
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #218838;
            transform: translateY(-2px);
        }

        button:active {
            transform: translateY(2px);
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px 15px;
            }

            h1 {
                font-size: 20px;
            }

            input[type="number"] {
                font-size: 14px;
            }

            button {
                font-size: 16px;
                padding: 10px 15px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Cash Withdrawal</h1>
        <form action="processCashWithdrawal" method="POST">
            <input 
                type="number" 
                name="amount" 
                placeholder="Enter Amount" 
                required 
                min="1" 
                step="1" 
                aria-label="Enter amount to withdraw">
            <br>
            <button type="submit">Withdraw</button>
        </form>
    </div>
</body>
</html>
