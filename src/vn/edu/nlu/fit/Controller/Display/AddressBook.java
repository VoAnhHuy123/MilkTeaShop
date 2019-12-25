package vn.edu.nlu.fit.Controller.Display;

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

@WebServlet("/AddressBook")
public class AddressBook extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql = "SELECT * FROM type WHERE active=1";
//        String sqlId = "SELECT * FORM product WHERE active =1";
        String email = request.getParameter("email");
        try {
            PreparedStatement s = ConnectionDB.connect(sql);
            ResultSet sr1 = s.executeQuery();
            request.setAttribute("a", sr1);
            request.getRequestDispatcher("Addressbook.jsp").forward(request, response);
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
