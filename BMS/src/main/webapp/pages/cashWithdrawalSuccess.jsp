<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cash Withdrawal Success</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .container h1 {
            color: #28a745;
            font-size: 28px;
            margin-bottom: 30px;
            font-weight: 600;
        }
        .info {
            margin: 15px 0;
            font-size: 20px;
            color: #333;
            font-weight: 500;
        }
        .amount, .balance {
            font-size: 24px;
            font-weight: 700;
            color: #007bff;
            margin-top: 10px;
        }
        .balance {
            color: #17a2b8;
        }
        .footer {
            margin-top: 30px;
            font-size: 16px;
            color: #888;
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
            transition: background-color 0.3s ease;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Cash Withdrawal Successful!</h1>
        <p class="info">You have withdrawn:</p>
        <p class="amount">&#8377; <%= session.getAttribute("withdrawnAmount") %></p>
        <p class="info">Your remaining balance is:</p>
        <p class="balance">&#8377; <%= session.getAttribute("remainingBalance") %></p>
        <div class="footer">Thank you for using our services!</div>
        <form action="dashboard" method="get">
            <button type="submit" class="btn">Go to Dashboard</button>
        </form>
    </div>
</body>
</html>
