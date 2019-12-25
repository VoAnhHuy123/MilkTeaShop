package vn.edu.nlu.fit.Model;

public class Address {
    String name;
    String phone;
    String province;
    String district;
    String ward;
    String address;
    int type_address;
    int defaultt;

    public Address(String name, String phone, String province, String district, String ward, String address, int type_address, int defaultt) {

        this.name = name;
        this.phone = phone;
        this.province = province;
        this.district = district;
        this.ward = ward;
        this.address = address;
        this.type_address = type_address;
        this.defaultt = defaultt;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getType_address() {
        return type_address;
    }

    public void setType_address(int type_address) {
        this.type_address = type_address;
    }

    public int getDefaultt() {
        return defaultt;
    }

    public void setDefaultt(int defaultt) {
        this.defaultt = defaultt;
    }
}
