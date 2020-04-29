<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="iso-8859-1">
    <title>Error Page</title>
</head>
<body>
<h1>ERORR</h1>
<c:forEach items="${oss}" var="ors">
    <br>
    <h2>${ors.oId}</h2>
    <table>
        <tr>

        </tr>
        <tr>
        <tr>

        </tr>
    </table>
</c:forEach>
</tr>

<tr>
    <td><a href="/index.html">Home</a></td>
    <td><a href="/newOrder.html">Add Order </a></td>
    <td><a href="/listProducts.html">List Products</a></td>
    <td><a href="/listCustomers.html">List Customers</a></td>
    <td><a href="/logout.html">Logout</a></td>
</tr>

</table>
</body>
</html>