/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class cart {
//      id INT AUTO_INCREMENT PRIMARY KEY,
//  user_id INT,
//  product_id INT,
//  quantity INT,
//  price Double,
//  FOREIGN KEY (user_id) REFERENCES User(id),
//  FOREIGN KEY (product_id) REFERENCES Product(id)
    
    private int id;
    private int userId;
    private int productId;
    private int quantity;
    private double price;

    public cart() {
    }

    public cart(int id, int userId, int productId, int quantity, double price) {
        this.id = id;
        this.userId = userId;
        this.productId = productId;
        this.quantity = quantity;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    
 
}
