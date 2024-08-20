<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">

	body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    color: #333;
}

header {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo h1 {
    margin: 0;
    font-size: 24px;
}

.nav-links {
    list-style: none;
    display: flex;
    gap: 20px;
    margin: 0;
}

.nav-links li {
    display: inline;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
    font-size: 16px;
    transition: color 0.3s ease;
}

.nav-links a:hover {
    color: #ffeb3b;
}

.hero {
    background-color: #007bff;
    color: #fff;
    text-align: center;
    padding: 100px 20px;
}

.hero-text h2 {
    font-size: 36px;
    margin: 0;
}

.hero-text p {
    font-size: 18px;
    margin: 10px 0 20px;
}

.btn-cta {
    padding: 12px 30px;
    background-color: #ffeb3b;
    color: #007bff;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    text-decoration: none;
}

.btn-cta:hover {
    background-color: #fdd835;
}

.features {
    padding: 50px 20px;
    text-align: center;
}

.features h3 {
    font-size: 28px;
    margin-bottom: 30px;
}

.feature-cards {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
}

.card {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: left;
}

.card h4 {
    font-size: 20px;
    margin-bottom: 10px;
}

.card p {
    font-size: 16px;
    color: #666;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px 0;
    margin-top: 50px;
    position: relative;
    bottom: 0;
    width: 100%;
}
	
		
</style>
</head>
<body>
<header>
        <nav>
            <div class="logo">
                <h1>Inventory Manager</h1>
            </div>
            <ul class="nav-links">
                <li><a href="/">Home</a></li>
                <li><a href="/products">Products</a></li>
                <li><a href="/orders">Orders</a></li>
                <li><a href="/inventory">Inventory</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="hero">
            <div class="hero-text">
                <h2>Welcome to Your Inventory Management System</h2>
                <p>Efficiently manage and track your inventory with ease.</p>
                <a href="/inventory" class="btn-cta">Get Started</a>
            </div>
        </section>

        <section class="features">
            <h3>Key Features</h3>
            <div class="feature-cards">
                <div class="card">
                    <h4>Real-time Inventory Tracking</h4>
                    <p>Monitor your inventory levels in real-time to avoid stockouts and overstocking.</p>
                </div>
                <div class="card">
                    <h4>Comprehensive Reporting</h4>
                    <p>Generate detailed reports to analyze your inventory performance and trends.</p>
                </div>
                <div class="card">
                    <h4>User Management</h4>
                    <p>Control access to the system with different user roles and permissions.</p>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Inventory Manager. Yash Shende.</p>
    </footer>

</body>
</html>