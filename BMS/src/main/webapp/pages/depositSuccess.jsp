<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deposit Success</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f7f7f7, #e3e3e3);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 600px;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: box-shadow 0.3s ease, transform 0.2s ease;
        }

        .container:hover {
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
            transform: translateY(-5px);
        }

        h1 {
            color: #28a745;
            font-size: 32px;
            margin-bottom: 20px;
            font-weight: 700;
        }

        p {
            font-size: 18px;
            color: #555;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        .btn:active {
            transform: translateY(1px);
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #888;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .container {
                padding: 30px;
            }

            h1 {
                font-size: 28px;
            }

            p {
                font-size: 16px;
            }

            .btn {
                font-size: 16px;
                padding: 10px 25px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Deposit Successful!</h1>
        <p>Your deposit has been successfully processed. Your new balance has been updated.</p>
        <form action="dashboard" method="get">
            <button type="submit" class="btn">Go to Dashboard</button>
        </form>
        <div class="footer">Thank you for using our services!</div>
    </div>
</body>
</html>
