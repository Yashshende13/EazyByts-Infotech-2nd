package com.app.InventoryManagementSystems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.InventoryManagementSystems.entity.Inventory;
import com.app.InventoryManagementSystems.service.InventoryService;
import com.app.InventoryManagementSystems.service.ProductService;

@Controller
@RequestMapping("/inventory")
public class InventoryController {

    @Autowired
    private InventoryService inventoryService;

    @Autowired
    private ProductService productService;

    @GetMapping
    public ModelAndView listInventories() {
        List<Inventory> inventories = inventoryService.getAllInventories();
        return new ModelAndView("inventory", "inventories", inventories);
    }

    @GetMapping("/new")
    public ModelAndView newInventoryForm() {
        ModelAndView modelAndView = new ModelAndView("inventoryForm");
        modelAndView.addObject("inventory", new Inventory());
        modelAndView.addObject("products", productService.getAllProducts());
        return modelAndView;
    }

    @PostMapping("/submitInventory")
    public String saveInventory(@ModelAttribute Inventory inventory) {
        inventoryService.saveInventory(inventory);
        return "redirect:/inventory";
    }

    @GetMapping("/edit/{id}")
    public ModelAndView editInventoryForm(@PathVariable Long id) {
        Inventory inventory = inventoryService.getInventoryById(id);
        ModelAndView modelAndView = new ModelAndView("inventoryForm");
        modelAndView.addObject("inventory", inventory);
        modelAndView.addObject("products", productService.getAllProducts());
        return modelAndView;
    }

    @GetMapping("/delete/{id}")
    public String deleteInventory(@PathVariable Long id) {
        inventoryService.deleteInventory(id);
        return "redirect:/inventory";
    }
}
