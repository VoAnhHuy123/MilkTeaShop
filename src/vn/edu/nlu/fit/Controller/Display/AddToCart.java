package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.MilkTea;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static vn.edu.nlu.fit.DB.ConnectionDB.con;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String sql="SELECT * FROM product WHERE id=?";
//        response.getWriter().println("safsd");
        try {
            PreparedStatement a = con.prepareStatement(sql);
            a.setString(1, id);
            response.getWriter().println("sfafafdfs");
//            response.getWriter().println("safsd");
            ResultSet rs = a.executeQuery();
            MilkTea milkTea = new MilkTea();
            milkTea.setName(rs.getString("name"));
//            request.setAttribute("milktea", milkTea);
            response.setContentType("text/plain");

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
