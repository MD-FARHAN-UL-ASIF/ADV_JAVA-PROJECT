<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Users</title>
</head>
<body>

<h1>Users</h1>

<input type="button" value="Add User" onclick="window.location.href='create';return false;">
<input type="button" value="Add User DTO" onclick="window.location.href='create_dto';return false;">

<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Username</th>
        <th>Full Name</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <c:url var="updateLink" value="/users/edit">
                <c:param name="userId" value="${user.id}" />
            </c:url>
            <c:url var="deleteLink" value="/users/delete">
                <c:param name="userId" value="${user.id}" />
            </c:url>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.fullName}</td>
            <td>${user.customer.gender}</td>
            <td> <c:forEach items="${user.customer.addresses}" var="address">
                ${address.addressType} ${address.address}
            </c:forEach>
            </td>
            <td><a href="${updateLink}">Update</a> | <a href="${deleteLink}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
