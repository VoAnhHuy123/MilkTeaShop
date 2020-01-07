package vn.edu.nlu.fit.Model;



public class Order {

    ShoppingCart shoppingCart;
    String status;
    Address address;
    double price;
    double couponPrice;
    String payment;
    String note;

    public Order(ShoppingCart shoppingCart, String status, Address address, String payment, String note, double price, double couponPrice) {
        this.shoppingCart = shoppingCart;
        this.status = status;
        this.address = address;
        this.payment = payment;
        this.note = note;
        this.price = price;
        this.couponPrice =couponPrice;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getCouponPrice() {
        return couponPrice;
    }

    public void setCouponPrice(double couponPrice) {
        this.couponPrice = couponPrice;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Order() {
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public void setShoppingCart(vn.edu.nlu.fit.Model.ShoppingCart shoppingCart) {
    }
}
