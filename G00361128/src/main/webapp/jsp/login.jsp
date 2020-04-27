<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="iso-8859-1">
    <title>Login Page </title>
</head>
<body>
<h1>Login  with Username  and Password</h1>

<form:form modelAttribute="product">
    <table>
        <tr>
            <td>User:</td>
            <td> <form:input path="username"></form:input></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td> <form:input path="passoword"></form:input></td>

        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Login"/>
            </td>
        </tr>

    </table>
</form:form>
</body>
</html>