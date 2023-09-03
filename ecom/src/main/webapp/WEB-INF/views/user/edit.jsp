<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>

<h1>Edit User</h1>

<form:form action="update" modelAttribute="user">

    <label for="id">Id:</label>
    <form:input path="id" id="for" readonly="true"/>
    <form:errors path="id"/>

    <br><br>

    <label for="user_name">Name:</label>
    <form:input path="username" id="user_name"/>
    <form:errors path="username"/>

    <br><br>

    <label for="full_name">Full Name:</label>
    <form:input path="fullName" id="full_name"/>
    <form:errors path="fullName"/>

    <br><br>

    <label for="password">Password:</label>
    <form:input path="password" id="password"/>
    <form:errors path="password"/>

    <br><br>

    <input type="submit">

</form:form>

</body>
</html>
