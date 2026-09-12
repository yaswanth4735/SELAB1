<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Menu - Online Food Delivery</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Our Menu</h1>
        <a class="btn" href="index.jsp">Home</a>
        <a class="btn" href="cart">Cart</a>
    </header>
    <main>
        <div class="food-grid">
            <c:forEach var="food" items="${foods}">
                <div class="food-card">
                    <h3><c:out value="${food.name}"/></h3>
                    <p class="category"><c:out value="${food.category}"/></p>
                    <p><c:out value="${food.description}"/></p>
                    <p class="price">₹<c:out value="${food.price}"/></p>
                    <a class="btn" href="cart?action=add&id=${food.id}">Add to Cart</a>
                </div>
            </c:forEach>
        </div>
    </main>
</body>
</html>
<-- Updated menu -->
