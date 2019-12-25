package vn.edu.nlu.fit.Model;

public class Ward {
    String id;
    String name;

    public Ward(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public Ward() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
