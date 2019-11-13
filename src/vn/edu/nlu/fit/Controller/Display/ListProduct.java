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

@WebServlet("/ListProduct")
public class ListProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        response.getWriter().println(type);
        if (type != null) {
            if (type.equals("1")) {
                type = "trasua";
            } else if (type.equals("2")) {
                type = "sinhto";
            } else type = "nuocep";
        }

        try {
            Statement s = ConnectionDB.connect();
            Statement s1 = ConnectionDB.connect();
            String sql = "SELECT * FROM type WHERE active=1";

            String sql1 = "SELECT name,type,price,img FROM product WHERE active=1";

            ResultSet sr = s.executeQuery(sql);
            if (type != null) sql1 += " AND type =" +"'" + type + "'";
            response.getWriter().println(sql1);
            ResultSet sr1 = s1.executeQuery(sql1);
            response.getWriter().println("d");
            request.setAttribute("a", sr);
            request.setAttribute("b", sr1);
            request.getRequestDispatcher("Listproduct.jsp").forward(request, response);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }




    }
}
