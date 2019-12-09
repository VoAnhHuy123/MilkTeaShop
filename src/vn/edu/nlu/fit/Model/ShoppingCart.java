package vn.edu.nlu.fit.Model;

import java.util.List;

public class ShoppingCart {
    int id;
    List<Item> listItem;
    int user_id;
    int status;

    public ShoppingCart(int id, List<Item> listItem, int user_id, int status) {
        this.id = id;
        this.listItem = listItem;
        this.user_id = user_id;
        this.status = status;
    }

    public ShoppingCart() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Item> getListItem() {
        return listItem;
    }

    public void setListItem(List<Item> listItem) {
        this.listItem = listItem;
    }


    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
