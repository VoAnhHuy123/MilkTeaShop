package vn.edu.nlu.fit.Model;

public class Item {
    int id;
    Product product;
    int quantity;
    long price;

    public Item(int id, Product product, int quantity, long price) {
        this.id = id;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public Item() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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

    public void setPrice() {
        this.price = (long) (this.quantity*this.product.getPrice());
    }
}
