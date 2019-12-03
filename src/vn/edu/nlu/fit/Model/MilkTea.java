package vn.edu.nlu.fit.Model;

public class MilkTea {
    String name;
    String type;

    public MilkTea(String name, String type) {
        this.name = name;
        this.type = type;
    }

    public MilkTea() {
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
}
