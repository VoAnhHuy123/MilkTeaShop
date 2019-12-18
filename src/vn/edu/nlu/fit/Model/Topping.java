package vn.edu.nlu.fit.Model;

public class Topping {
    String name;
     double price;

    public Topping(String name, double price) {
        this.name = name;
        this.price = price;
    }

    public Topping() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
