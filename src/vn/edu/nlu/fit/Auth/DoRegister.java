package vn.edu.nlu.fit.Auth;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/DoRegister")
public class DoRegister extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String tel = request.getParameter("telephone");
        String pass = request.getParameter("password");

         String hash = BCrypt.hashpw(pass, BCrypt.gensalt(12));
        response.getWriter().println(firstName);
        response.getWriter().println(lastName);
        response.getWriter().println(email);
        response.getWriter().println(tel);
        try {
            response.getWriter().println("b");
            Statement st = ConnectionDB.connect();
            int sql = st.executeUpdate("insert into user(firstname,lastname,phone,email,active,pass)values('" + firstName + "','" + lastName + "','" + tel + "','" + email + "','0','" + hash + "')");
            response.getWriter().println(sql);
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
