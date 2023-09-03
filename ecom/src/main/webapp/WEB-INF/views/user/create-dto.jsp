<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create User DTO</title>
</head>
<body>

<h1>Create User DTO</h1>

<form:form action="store_dto" modelAttribute="userDto">
    <label for="username">Username:</label>
    <form:input path="username" id="username"/>
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

    <label for="gender">Gender:</label>
    <form:radiobutton path="gender" id="gender" value="MALE"/>MALE
    <form:radiobutton path="gender" id="gender" value="FEMALE"/>FEMALE
    <form:errors path="gender"/>

    <br><br>

    <label for="dob">Date Of Birth:</label>
    <form:input type="date" path="dateOfBirth" id="dob"/>
    <form:errors path="dateOfBirth"/>

    <br><br>

    <input type="submit">

</form:form>

</body>
</html>
