<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Confirmed</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>✅ Order Placed Successfully!</h1>
    </header>
    <main>
        <p>Thank you, <strong>${order.customerName}</strong>!</p>
        <p>Your order ID: <strong>${order.orderId}</strong></p>
        <p>Delivery Address: ${order.address}</p>
        <p>Total Amount: ₹${order.totalAmount}</p>
        <a class="btn" href="index.jsp">Back to Home</a>
    </main>
</body>
</html>
