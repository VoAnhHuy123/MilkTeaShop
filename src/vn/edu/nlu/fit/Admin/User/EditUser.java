package vn.edu.nlu.fit.Admin.User;

import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.util.Util;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/EditUser")
public class EditUser extends HttpServlet {
    String stt = "";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf8");
        request.setCharacterEncoding("utf8");
        request.getServletContext().getContext("text/html;charset=UTF-8");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String moblie = request.getParameter("mobile");
        String password = request.getParameter("password").trim();
        String confirmpassword = request.getParameter("confirmpassword");
        String email = request.getParameter("email");
        String active = request.getParameter("active");
////        response.setContentType("text/html");
////        ServletContext context = getServletContext();
////        String stt = (String) context .getAttribute("stt");
        String id = stt;

//
        try {
            String update = "UPDATE users SET first_name = ?, last_name = ?, email = ?, password= ?, phone = ?, active= ? WHERE id =' " + id +"'";
            PreparedStatement pr = ConnectionDB.connect(update);
            pr.setString(1, firstName);
            pr.setString(2, lastName);
            pr.setString(3, email);
            pr.setString(4, password);
            pr.setString(5, moblie);
            pr.setString(6, active);
            pr.executeUpdate();
//            response.getWriter().println(pr);

            response.sendRedirect(Util.fullPath("AllUser"));
//            request.getRequestDispatcher("AllUser").forward(request, response);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf8");
        request.setCharacterEncoding("utf8");
//        String firstName ="";
//        String lastName ="";
//        String moblie ="";
//        String password ="";
//        String email ="";
//        String active ="";
       stt = request.getParameter("stt");
        try {
            String sql = "SELECT * FROM users WHERE id = '" + stt +"'";
            PreparedStatement preparedStatement = ConnectionDB.connect(sql);
            ResultSet resultSet = preparedStatement.executeQuery(sql);
            request.setAttribute("set", resultSet);
            request.getRequestDispatcher("Admin/light/editUser.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
