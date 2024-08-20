package com.app.InventoryManagementSystems.entity;

import jakarta.persistence.*;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private int quantity;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date orderDate;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(Long id, Product product, int quantity, Date orderDate) {
		super();
		this.id = id;
		this.product = product;
		this.quantity = quantity;
		this.orderDate = orderDate;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	
    
    // Getters and setters
}
