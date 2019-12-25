package vn.edu.nlu.fit.Auth;

import org.mindrot.jbcrypt.BCrypt;
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

@WebServlet("/FinalForgotPass")
public class FinalForgotPass extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf8");
        String email = request.getParameter("email");
        String pass =  request.getParameter("new-pass");

        response.getWriter().println(email);
        String hash = BCrypt.hashpw(pass, BCrypt.gensalt(12));
        String sqlUser = "SELECT * FROM users WHERE email = ?";
        try {
            PreparedStatement prUser = ConnectionDB.connect(sqlUser);
            prUser.setString(1, email);
            ResultSet rsUser = prUser.executeQuery();
            rsUser.first();
            rsUser.updateString("password", hash);
            rsUser.updateRow();
            response.sendRedirect("http://localhost:8080/MilkTeaShop/Login");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        doGet(request, response);
    }
}
