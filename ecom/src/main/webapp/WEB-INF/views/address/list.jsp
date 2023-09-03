<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Addresses</title>
</head>
<body>

<h1>Addresses</h1>

<input type="button" value="Add Address" onclick="window.location.href='create';return false;">

<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Address</th>
        <th>Type</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${addresses}" var="address">
        <tr>
            <c:url var="updateLink" value="/addresses/edit">
                <c:param name="userId" value="${address.id}" />
            </c:url>
            <c:url var="deleteLink" value="/addresses/delete">
                <c:param name="userId" value="${address.id}" />
            </c:url>
            <td>${address.id}</td>
            <td>${address.address}</td>
            <td>${address.addressType}</td>
            <td><a href="${updateLink}">Update</a> | <a href="${deleteLink}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
