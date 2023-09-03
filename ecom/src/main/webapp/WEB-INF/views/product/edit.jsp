<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>

<h1>Edit Product</h1>

<form:form action="update" modelAttribute="product">

    <label for="id">Id:</label>
    <form:input path="id" id="for" readonly="true"/>
    <form:errors path="id"/>

    <br><br>

    <label for="name">Name:</label>
    <form:input path="name" id="name"/>
    <form:errors path="name"/>

    <br><br>

    <input type="submit">

</form:form>

</body>
</html>
