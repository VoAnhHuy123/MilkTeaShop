package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.Address;
import vn.edu.nlu.fit.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;

@WebServlet("/SaveAddress")
public class SaveAddress extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String index = request.getParameter("index");
        int intIndex = Integer.parseInt(index);
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String province = "Hồ Chi Minh";
        String province_id = "79";
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        String address = request.getParameter("address");
        String typeAddress = request.getParameter("typeaddress");
//        if (index == null) {
            String defaultt = request.getParameter("default");
        int intDefault=0;
            if (defaultt !=null){
                intDefault = Integer.parseInt(defaultt);
            }

//        }

       int intTypeAddress = Integer.parseInt(typeAddress);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String sqlAddress = "SELECT province.name as \"province\", district.name as \"district\", ward.name as \"ward\" FROM province JOIN district on province.id = district.province_id JOIN \n" +
                "ward ON ward.district_id = district.id WHERE province.id=? AND district.id= ? AND ward.id = ?";
        PreparedStatement psAddress = null;
        try {
             psAddress= ConnectionDB.connect(sqlAddress);
             psAddress.setString(1, province_id);
             psAddress.setString(2, district);
             psAddress.setString(3, ward);
            ResultSet rsAddress = psAddress.executeQuery();
            rsAddress.first();
            Address address1 = new Address();
            address1.setName(name);
            address1.setPhone(phone);
            address1.setProvince(rsAddress.getString("province"));
            address1.setDistrict(rsAddress.getString("district"));
            address1.setWard(rsAddress.getString("ward"));
            address1.setAddress(address);
            address1.setType_address(typeAddress);
            if (index ==null) {
                address1.setDefaultt(intDefault);
                if (intDefault == 1) {
                    user.getAddressList().add(address1);
                    user.getAddressList().get(0).setDefaultt(0);
                    Collections.swap(user.getAddressList(), 0, user.getAddressList().size() - 1);
                }
            }else{
                user.getAddressList().set(intIndex, address1);
            }

    response.getWriter().println(user.getAddressList().size());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
