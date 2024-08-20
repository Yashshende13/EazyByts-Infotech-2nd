<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory List</title>
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
  width: 80%;
  margin: 0 auto;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
  border: 1px solid #ddd;
  padding: 10px;
  text-align: left;
}

th {
  background-color: #4CAF50;
  color: #fff;
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

.add-new {
  background-color: #4CAF50;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.add-new:hover {
  background-color: #3e8e41;
}

</style>
</head>
<body>

	<h2>Inventory List</h2>
<a href="/inventory/new">Add New Inventory</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="inventory" items="${inventories}">
        <tr>
            <td>${inventory.id}</td>
            <td>${inventory.product.name}</td>
            <td>${inventory.quantity}</td>
            <td>
                <a href="/inventory/edit/${inventory.id}">Edit</a>
                <a href="/inventory/delete/${inventory.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>