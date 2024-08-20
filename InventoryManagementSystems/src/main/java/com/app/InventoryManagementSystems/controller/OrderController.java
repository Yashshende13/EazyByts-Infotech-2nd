package com.app.InventoryManagementSystems.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.app.InventoryManagementSystems.service.OrderService;
import com.app.InventoryManagementSystems.service.ProductService;
import com.app.InventoryManagementSystems.entity.Order;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    @GetMapping
    public ModelAndView listOrders() {
        List<Order> orders = orderService.getAllOrders();
        return new ModelAndView("orders", "orders", orders);
    }

    @GetMapping("/new")
    public ModelAndView newOrderForm() {
        ModelAndView modelAndView = new ModelAndView("orderForm");
        modelAndView.addObject("order", new Order());
        modelAndView.addObject("products", productService.getAllProducts());
        return modelAndView;
    }

    @PostMapping("/saveOrder")
    public String saveOrder(@ModelAttribute Order order) {
        orderService.saveOrder(order);
        return "redirect:/orders";
    }

    @GetMapping("/edit/{id}")
    public ModelAndView editOrderForm(@PathVariable Long id) {
        Order order = orderService.getOrderById(id);
        ModelAndView modelAndView = new ModelAndView("orderForm");
        modelAndView.addObject("order", order);
        modelAndView.addObject("products", productService.getAllProducts());
        return modelAndView;
    }

    @GetMapping("/delete/{id}")
    public String deleteOrder(@PathVariable Long id) {
        orderService.deleteOrder(id);
        return "redirect:/orders";
    }
}
