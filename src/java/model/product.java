/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class product {
    private int id;
    private String name;
    private int catId;
    private String image;
    private String des;
    private int qty;
    private Double price;
    private int bestSl;

    public product() {
    }

    public product(int id, String name, int catId, String image, String des, int qty, Double price, int bestSl) {
        this.id = id;
        this.name = name;
        this.catId = catId;
        this.image = image;
        this.des = des;
        this.qty = qty;
        this.price = price;
        this.bestSl = bestSl;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getBestSl() {
        return bestSl;
    }

    public void setBestSl(int bestSl) {
        this.bestSl = bestSl;
    }
    
}
