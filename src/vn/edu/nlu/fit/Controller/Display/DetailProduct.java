package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/DetailProduct")
public class DetailProduct extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf8");
        String id = request.getParameter("id");
        response.getWriter().println(id);
        try {
            String sql1 = "SELECT * FROM type WHERE active=1";
            String sql2 = "SELECT * FROM product WHERE active=1 and id= ?";
            String sql3 = "select * from topping";
            String sqlSize = "SELECT * FROM size";
            PreparedStatement qr1 = ConnectionDB.connect(sql1);
            PreparedStatement qr2 = ConnectionDB.connect(sql2);
            PreparedStatement qr3 = ConnectionDB.connect(sql3);
            PreparedStatement prSize = ConnectionDB.connect(sqlSize);
            response.getWriter().println(sql1);

            qr2.setString(1, id);
            ResultSet sr1 = qr1.executeQuery();
            ResultSet sr2 = qr2.executeQuery();
            ResultSet sr3 = qr3.executeQuery();
            ResultSet srSize= prSize.executeQuery();

            request.setAttribute("a", sr1);
            request.setAttribute("b", sr2);
            request.setAttribute("c", sr3);
            request.setAttribute("size", srSize);
            request.getRequestDispatcher("DetailProduct.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}