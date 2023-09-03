<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Address</title>
</head>
<body>

<h1>Edit Address</h1>

<form:form action="update" modelAttribute="address">

    <label for="id">Id:</label>
    <form:input path="id" id="for" readonly="true"/>
    <form:errors path="id"/>

    <br><br>

    <label for="address">Address:</label>
    <form:input path="address" id="address"/>
    <form:errors path="address"/>

    <br><br>

    <label for="addressType">Type:</label>
    <form:radiobutton path="addressType" id="addressType" value="HOME"/>HOME
    <form:radiobutton path="addressType" id="adressaddressTypeType" value="OFFICE"/>OFFICE
    <form:radiobutton path="addressType" id="adressaddressTypeType" value="LOCAL"/>LOCAL
    <form:errors path="addressType"/>

    <br><br>

    <input type="submit">

</form:form>

</body>
</html>
