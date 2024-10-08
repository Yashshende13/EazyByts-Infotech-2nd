package com.app.InventoryManagementSystems.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.InventoryManagementSystems.entity.Product;

@Repository
public interface ProductRepo extends JpaRepository<Product, Long> {
}
