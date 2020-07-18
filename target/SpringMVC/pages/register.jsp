<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
</head>
<body bgcolor="#f0f8ff">
<h1 align="center">Registration Page</h1>
<form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
    <table align="center">
        <tr>
            <td>
                <form:label path="empId">Employee Id</form:label>
            </td>
            <td>
                <form:input path="empId" name="empId" id="empId" placeHolder="enter employee id" required="required"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="password">Password</form:label>
            </td>
            <td>
                <form:password path="password" name="password" id="password" placeHolder="enter password" required="required"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="firstname">FirstName</form:label>
            </td>
            <td>
                <form:input path="firstname" name="firstname" id="firstname" placeHolder="enter your first name" required="required"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lastname">LastName</form:label>
            </td>
            <td>
                <form:input path="lastname" name="lastname" id="lastname" placeHolder="enter your last name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="email">Email</form:label >
            </td>
            <td>
                <form:input path="email" name="email" id="email" placeHolder="enter email id" required="required"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="address">Address</form:label>
            </td>
            <td>
                <form:input path="address" name="address" id="address" placeHolder="enter address"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="phone">Phone</form:label>
            </td>
            <td>
                <form:input path="phone" name="phone" id="phone" placeHolder="enter 10 digit phone number" required="required"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <form:button id="register" name="register">Register</form:button>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td></td>
            <td><a href="/">Home</a>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>