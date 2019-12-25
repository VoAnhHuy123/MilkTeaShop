package vn.edu.nlu.fit.Auth;

import com.mysql.jdbc.PreparedStatement;
import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/DoConfirmChangePass")
public class DoConfirmChangePass extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql = "SELECT * FROM type WHERE active=1";
        String key = request.getParameter("key");
        String sqlKey = "SELECT * FROM users WHERE `key`=?";

//        String sqlId = "SELECT * FORM product WHERE active =1";
        try {
            PreparedStatement s = ConnectionDB.connect(sql);
            ResultSet sr1 = s.executeQuery();
            request.setAttribute("a", sr1);
            PreparedStatement prKey = ConnectionDB.connect(sqlKey);
            prKey.setString(1, key);
            ResultSet rsKey = prKey.executeQuery();
            rsKey.last();
            int count =rsKey.getRow();
            if (count==1){
                response.sendRedirect("http://localhost:8080/MilkTeaShop/NewPass?email=" + rsKey.getString("email"));
            }else {
                response.getWriter().println("Email khong ton tai");
            }

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
