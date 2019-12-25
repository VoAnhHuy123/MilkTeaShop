package vn.edu.nlu.fit.Admin.User;

import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Admin/light/addUser.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf8");
        request.setCharacterEncoding("utf8");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String moblie = request.getParameter("mobile");
        String password = request.getParameter("password").trim();
        String confirmpassword = request.getParameter("confirmpassword");
        String email = request.getParameter("email");
        String active = request.getParameter("active");
        try {
            String sqlThem = "INSERT INTO users(first_name, last_name, email, password, phone, active) VALUES(?,?,?,?,?,?)";
            PreparedStatement pr = ConnectionDB.connect(sqlThem);
            pr.setString(1, firstName);
            pr.setString(2, lastName);
            pr.setString(3, email);
            pr.setString(4, password);
            pr.setString(5, moblie);
            pr.setString(6, active);
            pr.executeUpdate();
            response.sendRedirect(Util.fullPath("AllUser"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
