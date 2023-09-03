<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ecom</title>
</head>
<body>
<h1>Welcome to Ecom</h1>
<a href="${pageContext.request.contextPath}/users/list">Users</a>
|
<a href="${pageContext.request.contextPath}/addresses/list">Addresses</a>
|
<a href="${pageContext.request.contextPath}/products/list">Products</a>
|
<a href="${pageContext.request.contextPath}/products/order_create">Create Order</a>
</body>
</html>