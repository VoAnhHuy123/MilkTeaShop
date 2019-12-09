package vn.edu.nlu.fit.Model;

public class Product {
    int id;
    String name;
    String type;
    String image;
    String review;
    double price;
    int available;
    String reviews;
    String size;
    int active;

    public Product(int id, String name, String type, String image, String review, double price, int available, String reviews, String size, int active) {

        this.id = id;
        this.name = name;
        this.type = type;
        this.image = image;
        this.review = review;
        this.price = price;
        this.available = available;
        this.reviews = reviews;
        this.size = size;
        this.active = active;
    }

    public Product() {
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id=id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public String getReviews() {
        return reviews;
    }

    public void setReviews(String reviews) {
        this.reviews = reviews;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }
}
