<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Products</title>
</head>
<body>

<h1>Products</h1>

<input type="button" value="Add Product" onclick="window.location.href='create';return false;">

<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="product">
        <tr>
            <c:url var="updateLink" value="/products/edit">
                <c:param name="productId" value="${product.id}" />
            </c:url>
            <c:url var="deleteLink" value="/products/delete">
                <c:param name="productId" value="${product.id}" />
            </c:url>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td><a href="${updateLink}">Update</a> | <a href="${deleteLink}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
