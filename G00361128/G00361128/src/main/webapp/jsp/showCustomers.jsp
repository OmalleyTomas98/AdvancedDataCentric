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
<h1>List of Products</h1>
<table>
    <tr>
        <th>Product ID</th>
        <th>Description</th>
        <th>Quantity in Stock</th>
    </tr>
    <tr>
        <c:forEach items="${css}" var="customerc">
    <tr>
        <td>${customerc.cId }</td>
        <td>${customerc.cName}</td>
        <td>${customerc.orders}</td>
    </tr>
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