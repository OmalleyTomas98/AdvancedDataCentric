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
<form:form modelAttribute="product">
    <table>
        <tr>
            <td>product Desc:</td>
            <td> <form:input path="pDesc"></form:input></td>
        </tr>
        <tr>
            <td>Quantity in stock</td>
            <td> <form:input path="qtyInStock"></form:input></td>

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