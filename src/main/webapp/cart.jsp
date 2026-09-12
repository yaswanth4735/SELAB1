<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Cart - Online Food Delivery</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Your Cart</h1>
        <a class="btn" href="index.jsp">Home</a>
        <a class="btn" href="menu">Menu</a>
    </header>
    <main>
        <c:choose>
            <c:when test="${empty cart}">
                <p>Your cart is empty.</p>
            </c:when>
            <c:otherwise>
                <table class="cart-table">
                    <tr><th>Item</th><th>Price</th><th>Qty</th><th>Subtotal</th><th></th></tr>
                    <c:forEach var="item" items="${cart}" varStatus="loop">
                        <tr>
                            <td><c:out value="${item.food.name}"/></td>
                            <td>₹<c:out value="${item.food.price}"/></td>
                            <td><c:out value="${item.quantity}"/></td>
                            <td>₹<c:out value="${item.subtotal}"/></td>
                            <td><a href="cart?action=remove&index=${loop.index}">Remove</a></td>
                        </tr>
                    </c:forEach>
                </table>

                <h3>Checkout</h3>
                <form action="order" method="post">
                    <label>Name: <input type="text" name="name" required></label><br>
                    <label>Address: <input type="text" name="address" required></label><br>
                    <button class="btn" type="submit">Place Order</button>
                </form>
            </c:otherwise>
        </c:choose>
    </main>
</body>
</html>
