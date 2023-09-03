<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Order</title>
</head>
<body>

<h1>Create Order</h1>

<form:form action="store" modelAttribute="product">
    <label for="name">Name:</label>
    <form:input path="name" id="name"/>
    <form:errors path="name"/>

    <br><br>

    <label>Customer:</label>
    <form:select path="customers">
        <c:forEach items="${customers}" var="customer">
            <form:option value="${customer.id}" label="${customer.user.fullName}" />
        </c:forEach>
    </form:select>

    <br><br>

    <input type="submit">

</form:form>

</body>
</html>
