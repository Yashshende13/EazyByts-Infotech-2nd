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

import com.app.InventoryManagementSystems.entity.Product;
import com.app.InventoryManagementSystems.service.ProductService;

import ch.qos.logback.core.model.Model;

@Controller
@RequestMapping("/products")
public class ProductController {

	@Autowired
    private ProductService productService;

    @GetMapping
    public ModelAndView listProducts() {
        List<Product> products = productService.getAllProducts();
        return new ModelAndView("product", "products", products);
    }

    @GetMapping("/new")
    public ModelAndView newProductForm() {
        return new ModelAndView("productForm", "product", new Product());
    }

    @PostMapping("/saveProduct")
    public String saveProduct(@ModelAttribute Product product) {
        productService.saveProduct(product);
        return "redirect:/products";
    }

    @GetMapping("/edit/{id}")
    public ModelAndView editProductForm(@PathVariable Long id) {
        Product product = productService.getProductById(id);
        return new ModelAndView("productForm", "product", product);
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/products";
    }
}
