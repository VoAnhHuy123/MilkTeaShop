package vn.edu.nlu.fit.Controller.Display;

import com.google.gson.Gson;
import vn.edu.nlu.fit.DB.ConnectionDB;
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
import java.util.ArrayList;

@WebServlet("/Coupon")
public class Coupon extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String coupon = request.getParameter("coupon");
        String sql = "SELECT * FROM coupon";
        HttpSession session1 = request.getSession();
        User user = (User) session1.getAttribute("user");
        PreparedStatement preCoupon=null;
        try {
             preCoupon = ConnectionDB.connect(sql);
            ResultSet rsCoupon = preCoupon.executeQuery();
            double sell= 0;
            while (rsCoupon.next()){
                if (coupon.equals(rsCoupon.getString("code"))){
                    sell = user.getShoppingCart().total()* rsCoupon.getDouble("rate");

                }
            }
            response.setContentType("application/json");
//            String g = String.valueOf(sell);

//            int h = user.getShoppingCart().total();
            ArrayList<Double> price = new ArrayList<Double>();
            price.add(sell);
            price.add(user.getShoppingCart().total()-sell);
            Gson gson = new Gson();
            String ff = gson.toJson(price);
            response.getWriter().write(ff);
//            response.getWriter().write(h);
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
