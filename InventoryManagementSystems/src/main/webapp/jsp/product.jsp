<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style type="text/css">
/* Global Styles */

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  color: #333;
  background-color: #f9f9f9;
}

h2 {
  color: #333;
  margin-bottom: 20px;
  text-align: center;
}

a {
  text-decoration: none;
  color: #337ab7;
}

a:hover {
  color: #23527c;
}

/* Table Styles */

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
  background-color: #f0f0f0;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

tr:hover {
  background-color: #f2f2f2;
}

/* Action Links */

.actions {
  text-align: center;
}

.actions a {
  margin: 0 10px;
}

.actions a:hover {
  text-decoration: underline;
}

/* Add New Product Button */

.add-new-product {
  margin-bottom: 20px;
  padding: 10px 20px;
  background-color: #337ab7;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.add-new-product:hover {
  background-color: #23527c;
}

</style>
</head>
<body>

	<h2>Product List</h2>
<a href="/products/new">Add New Product</a>
<table border="1">
    <tr>

        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.price}</td>
            <td>${product.quantity}</td>
            <td>
                <a href="/products/edit/${product.id}">Edit</a>
                <a href="/products/delete/${product.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>