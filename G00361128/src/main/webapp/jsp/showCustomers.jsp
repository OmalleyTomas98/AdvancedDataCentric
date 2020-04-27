<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="iso-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="iso-8859-1">
    <title>Show Customers Page</title>
</head>
<body>
<h1>List of Customers</h1>
<c:forEach items="${css}" var="customerc">
    <h1>${customerc.cId} ${customerc.cName}</h1>
    <h2>${customerc.cName}'s Orders</h2>
    <table>
        <tr>
            <th>Order ID</th>
            <th>Quantity</th>
            <th>Product ID</th>
            <th>Product Description</th>
        </tr>
        <tr>
            <c:forEach items="${customerc.orders}" var="order">
        <tr>
            <td>${order.oId}</td>
            <td>${order.qty}</td>
            <td>${order.prod.pId}</td>
            <td>${order.prod.pDesc}</td>
            </c:forEach>
        </tr>
    </table>
</c:forEach>
    </tr>
    <tr>
        <td><a href="/index.html">Home</a></td>
        <td><a href="/addCustomer.html">Add Customer</a></td>
        <td><a href="/listProducts.html">List Products</a></td>
        <td><a href="/listOrders.html">List Orders</a></td>
        <td><a href="/logout.html">Logout</a></td>
    </tr>


</table>
</body>
</html>