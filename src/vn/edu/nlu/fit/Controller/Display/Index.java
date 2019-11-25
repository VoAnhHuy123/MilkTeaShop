package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/Index")
public class Index extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Statement s= ConnectionDB.connect();
            Statement s1= ConnectionDB.connect();
            String sql = "SELECT * FROM type WHERE active=1";
            String sql1 = "SELECT name,type_id,image FROM product WHERE active=1";
            ResultSet sr = s.executeQuery(sql);
            ResultSet sr1 = s1.executeQuery(sql1);
            request.setAttribute("a", sr);
            request.setAttribute("b", sr1);
            request.getRequestDispatcher("Index.jsp").forward(request, response);
//            request.getRequestDispatcher("Listproduct.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
