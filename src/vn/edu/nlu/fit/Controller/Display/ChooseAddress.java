package vn.edu.nlu.fit.Controller.Display;

import com.google.gson.Gson;
import com.mysql.jdbc.PreparedStatement;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.Order;
import vn.edu.nlu.fit.Model.ShoppingCart;
import vn.edu.nlu.fit.Model.User;
import vn.edu.nlu.fit.Model.Ward;

import javax.management.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ChooseAddress")
public class ChooseAddress extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String sql = "SELECT * FROM type WHERE active=1";
//        String sqlId = "SELECT * FORM product WHERE active =1";
        String email = request.getParameter("email");
        String idDistrict = request.getParameter("idDistrict");
        //lấy databse cơ sơ hành chính


        if (idDistrict == null) {
            String sqlDistrict = "SELECT * FROM district WHERE province_id=79";
            String sqlTypeAddress = "SELECT * FROM typeaddress";
            PreparedStatement psDistrict = null;
            PreparedStatement psTypeAddress = null;
            try {
                PreparedStatement s = ConnectionDB.connect(sql);
                ResultSet sr1 = s.executeQuery();
                request.setAttribute("a", sr1);
                //xử lý database cơ sở hành chính
                psDistrict = ConnectionDB.connect(sqlDistrict);
                ResultSet rsDistrict = psDistrict.executeQuery();
                request.setAttribute("district", rsDistrict);
                psTypeAddress = ConnectionDB.connect(sqlTypeAddress);
                ResultSet rsTypeAddress = psTypeAddress.executeQuery();
                request.setAttribute("typeaddress", rsTypeAddress);
                request.getRequestDispatcher("ChooseAddress.jsp").forward(request, response);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            String sqlWard = "SELECT * FROM ward WHERE district_id=?";
            PreparedStatement prWard = null;
            try {
                prWard = ConnectionDB.connect(sqlWard);
                prWard.setString(1, idDistrict);
                ResultSet rsWard = prWard.executeQuery();
                List<Ward> wardList = new ArrayList<>();
                while (rsWard.next()) {
                    Ward ward = new Ward();
                    ward.setId(rsWard.getString("id"));
                    ward.setName(rsWard.getString("name"));
                    wardList.add(ward);
                }
                Gson gson = new Gson();
                String wardd = gson.toJson(wardList);
                response.setContentType("application/json");
                response.getWriter().write(wardd);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
