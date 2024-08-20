package com.app.InventoryManagementSystems.repo;


import org.springframework.data.jpa.repository.JpaRepository;

import com.app.InventoryManagementSystems.entity.Inventory;

public interface InventoryRepository extends JpaRepository<Inventory, Long> {
}
