package vn.edu.nlu.fit.Model;

import java.util.List;

public class Order {
    String id;
    List<Item> listItem;
    User user;
    int status;

    public Order(String id, List<Item> listItem, User user, int status) {
        this.id = id;
        this.listItem = listItem;
        this.user = user;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List<Item> getListItem() {
        return listItem;
    }

    public void setListItem(List<Item> listItem) {
        this.listItem = listItem;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
