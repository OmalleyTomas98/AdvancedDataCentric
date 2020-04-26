<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="iso-8859-1">
    <title>Add New Customer </title>
</head>
<body>
<form:form modelAttribute="customer">
    <table>
        <tr>
            <td>Cust Name:</td>
            <td> <form:input path="cName"></form:input></td>

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