package vn.edu.nlu.fit.Model;

import javax.swing.*;
import java.util.List;

public class Item {
    int id;
    int productId;
    String name;
    String image;
    double price;
    int quantity;
    String size;
    List<Topping> toppingList;


    public Item(int id,int productId, String name, String image, double price, int quantity, List<Topping> toppingList, String size) {
        this.id = id;
        this.productId=productId;
        this.name = name;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.toppingList = toppingList;
        this.size = size;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Item() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public List<Topping> getToppingList() {
        return toppingList;
    }

    public void setToppingList(List<Topping> toppingList) {
        this.toppingList = toppingList;
    }
}
