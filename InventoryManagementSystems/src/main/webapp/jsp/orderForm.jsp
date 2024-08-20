<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Form</title>
<style type="text/css">
body {
    font-family: 'Arial', sans-serif;
    background-color: #f7f7f7;
    margin: 0;
    padding: 20px;
}

.btn-add-order {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn-add-order:hover {
    background-color: #0056b3;
}

.form-container {
    background-color: #fff;
    padding: 20px 40px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
    margin-top: 20px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #666;
    font-weight: bold;
}

input[type="text"],
input[type="number"],
input[type="date"],
select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
    color: #333;
}

input[type="text"]:focus,
input[type="number"]:focus,
input[type="date"]:focus,
select:focus {
    border-color: #007bff;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

.btn-submit {
    display: block;
    width: 100%;
    padding: 12px;
    background-color: #28a745;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn-submit:hover {
    background-color: #218838;
}


</style>
</head>
<body>

 <div class="form-container">
        <form action="/orders/saveOrder" method="post">
            <h2>Order Form</h2>

            <div class="form-group">
                <label for="productName">Product Number</label>
                <input type="text" id="product" name="product" required>
            </div>

            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="number" id="quantity" name="quantity" required>
            </div>

            <div class="form-group">
                <label for="orderDate">Order Date</label>
                <input type="date" id="orderDate" name="orderDate" required>
            </div>

            <!-- <div class="form-group">
                <label for="status">Status</label>
                <select id="status" name="status" required>
                    <option value="pending">Pending</option>
                    <option value="completed">Completed</option>
                    <option value="shipped">Shipped</option>
                </select>
            </div> -->

            <button type="submit" class="btn-submit">Submit</button>
        </form>
    </div>

</body>
</html>