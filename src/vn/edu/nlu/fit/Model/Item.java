package vn.edu.nlu.fit.Model;

public class Item {
    String id;
    MilkTea milkTea;
    int quantity;
    long price;

    public Item(String id, MilkTea milkTea, int quantity, long price) {
        this.id = id;
        this.milkTea = milkTea;
        this.quantity = quantity;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public MilkTea getMilkTea() {
        return milkTea;
    }

    public void setMilkTea(MilkTea milkTea) {
        this.milkTea = milkTea;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }
}
