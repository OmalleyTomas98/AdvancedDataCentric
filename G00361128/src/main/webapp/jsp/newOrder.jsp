<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="iso-8859-1">
    <title> New Order </title>
</head>
<body>
<h1>New Order</h1>
<form:form modelAttribute="order">
    <table>
        <tr>
            <td>Customer:</td>
            <td><form:input path="cust.cId"></form:input></td>
        </tr>
        <tr>
            <td>Product:</td>
            <td><form:input path="prod.pId"></form:input></td>
        </tr>
        <tr>
            <td>Quantity:</td>
            <td> <form:input path="qty"></form:input></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Add"/>
            </td>
        </tr>
        <tr>
            <td><a href="/index.html">Home</a></td>
            <td><a href="/listCustomers.html">List Customers</a></td>
            <td><a href="/listProducts.html">List Products</a></td>
        </tr>
    </table>
</form:form>
</body>
</html>