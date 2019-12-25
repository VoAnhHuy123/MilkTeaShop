package vn.edu.nlu.fit.Auth;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.User;
import vn.edu.nlu.fit.util.Util;

import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ProcessChangePass")
public class ProcessChangePass extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = request.getParameter("password");
        String confirmPass = request.getParameter("confirm");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int id = user.getId();
        String sqlUser = "SELECT `password` FROM users WHERE id =?";
        String mess="";
        PreparedStatement prUser=null;
        HttpSession session1 = request.getSession();

            try {
                if (pass.equals(confirmPass)) {
                    response.getWriter().println(id);
                String hash = BCrypt.hashpw(pass, BCrypt.gensalt(12));
                 prUser = ConnectionDB.connect(sqlUser);
                prUser.setInt(1, id);
                ResultSet rsUser = prUser.executeQuery();

                rsUser.last();
                response.getWriter().println(rsUser.getString("password"));
                response.getWriter().println(rsUser.getRow());
                rsUser.updateString("password","abc");
//                response.getWriter().println("asfdsdf");
                rsUser.updateRow();
//
//                mess="true";
//                session1.setAttribute("mess", mess);
                response.sendRedirect(Util.fullPath("MyAccount"));
                }else{
                    mess="false";
                    session1.setAttribute("mess",mess);
                    response.sendRedirect(Util.fullPath("ChangePassword"));
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
