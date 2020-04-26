<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="iso-8859-1">
    <title>Show Orders Page</title>
</head>
<body>
<h1>List of Products</h1>
<table>
    <tr>
        <th>Order ID</th>
        <th>Order Quantity</th>
        <th>Order Order date</th>
        <th>Customer Name</th>
        <th>Ordered Product</th>


    </tr>
    <tr>
        <c:forEach items="${oss}" var="ordero">
    <tr>
        <td>${ordero.oId }</td>
        <td>${ordero.qty}</td>
        <td>${ordero.orderDate}</td>
        <td>${ordero.cust}</td>
        <td>${ordero.prod}</td>

</tr>
    </c:forEach>
    </tr>

    <tr>
        <td><a href="/index.html">Home</a></td>
        <td><a href="/addOrder.html">Add Order </a></td>
        <td><a href="/listProducts.html">List Products</a></td>
        <td><a href="/listCustomers.html">List Customers</a></td>
        <td><a href="/logout.html">Logout</a></td>
    </tr>

</table>
</body>
</html>