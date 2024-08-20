<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order List</title>
<style type="text/css">
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
}

h2 {
  color: #333;
  margin-bottom: 20px;
  text-align: center;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid #ddd;
  padding: 10px;
  text-align: left;
}

th {
  background-color: #f7f7f7;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #e2e2e2;
}

a {
  text-decoration: none;
  color: #337ab7;
}

a:hover {
  color: #23527c;
}

.actions {
  text-align: center;
}

.actions a {
  margin: 0 10px;
}

</style>
</head>
<body>
<h2>Order List</h2>
<a href="/orders/new">Add New Order</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Order Date</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="order" items="${orders}">
        <tr>
            <td>${order.id}</td>
            <td>${order.product.name}</td>
            <td>${order.quantity}</td>
            <td>${order.orderDate}</td>
            <td>
                <a href="/orders/edit/${order.id}">Edit</a>
                <a href="/orders/delete/${order.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>