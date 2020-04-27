<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="iso-8859-1">
    <title>Add New Product </title>
</head>
<body>
<h1>Add New Product</h1>

<form:form modelAttribute="product">
    <table>
        <tr>
            <td>Product Description:</td>
            <td> <form:input path="pDesc"></form:input>may not be empty</td>
        </tr>
        <tr>
            <td>Quantity in stock:</td>
            <td> <form:input path="qtyInStock"></form:input>must be greater than or equal to 0</td>

        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Add"/>
            </td>
        </tr>
        <tr>
            <td><a href="/index.html">Home</a></td>
            <td><a href="/listOrders.html">List Orders</a></td>
            <td><a href="/listProducts.html">List Products</a></td>
        </tr>
    </table>
</form:form>
</body>
</html>