<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fast Cash Withdrawal Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .heading {
            font-size: 24px;
            color: #dc3545;
            margin-bottom: 20px;
        }

        .message {
            font-size: 18px;
            margin: 10px 0;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 30px;
            background-color: #dc3545;
            color: white;
            text-decoration: none;
            font-size: 18px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #c82333;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .heading {
                font-size: 20px;
            }

            .message {
                font-size: 16px;
            }

            .btn {
                width: 100%;
                font-size: 16px;
                padding: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="heading">
            Cash Withdrawal Failed
        </div>
        <div class="message">
            <p>Insufficient balance for the requested withdrawal.</p>
        </div>
        <form action="dashboard">
            <button type="submit" class="btn">Go to Dashboard</button>
        </form>
    </div>
</body>
</html>
