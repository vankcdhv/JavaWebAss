/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author vank4
 */
public class Product {
    private String ID;
    private String name;
    private String cat_ID;
    private String image;
    private double price;
    private int quantity;
    private String describe;
    private String status;
    private String addDate;

    public Product() {
    }

    public Product(String ID, String name, String cat_ID, String image, double price, int quantity, String describe, String status, String addDate) {
        this.ID = ID;
        this.name = name;
        this.cat_ID = cat_ID;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.describe = describe;
        this.status = status;
        this.addDate = addDate;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCat_ID() {
        return cat_ID;
    }

    public void setCat_ID(String cat_ID) {
        this.cat_ID = cat_ID;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddDate() {
        return addDate;
    }

    public void setAddDate(String addDate) {
        this.addDate = addDate;
    }
    public String toString(){
        return ID + "\t" + name + "\t" + cat_ID + "\t" + image + "\t" + price+ "\t" + quantity+ "\t" + describe+ "\t" + status+ "\t" + addDate;
    }
    
}
