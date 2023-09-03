<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Address</title>
</head>
<body>

<h1>Create Address</h1>

<form:form action="store" modelAttribute="address">
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

    <label for="customer">Customer:</label>
    <form:select path="customer">
        <c:forEach items="${customers}" var="customer">
            <form:option value="${customer.id}" label="${customer.user.fullName}" />
        </c:forEach>
    </form:select>

    <input type="submit">

</form:form>

</body>
</html>
