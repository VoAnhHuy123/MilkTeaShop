package vn.edu.nlu.fit.Model;

public class User {
    int id;
    String first_name;
    String last_name;
    String email;
    String phone;
    ShoppingCart shoppingCart;

    public User(int id, String first_name, String last_name, String email, String phone, ShoppingCart shoppingCart) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.phone = phone;
        this.shoppingCart = shoppingCart;
    }

    public User() {

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
