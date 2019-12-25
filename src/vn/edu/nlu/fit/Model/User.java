package vn.edu.nlu.fit.Model;

import java.util.List;

public class User {
    int id;
    String first_name;
    String last_name;
    String email;
    String phone;
    ShoppingCart shoppingCart;
    List<Address> addressList;
    int admin;

    public User( List<Address> addressList, int id, String first_name, String last_name, String email, String phone, ShoppingCart shoppingCart, int admin) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.phone = phone;
        this.shoppingCart = shoppingCart;
        this.admin = admin;
        this.addressList = addressList;

    }

    public User() {

    }

    public List<Address> getAddressList() {
        return addressList;
    }

    public void setAddressList(List<Address> addressList) {
        this.addressList = addressList;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public void setShoppingCart(ShoppingCart shoppingCart){
        this.shoppingCart=shoppingCart;
}
public ShoppingCart getShoppingCart(){
        return this.shoppingCart;
}
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
