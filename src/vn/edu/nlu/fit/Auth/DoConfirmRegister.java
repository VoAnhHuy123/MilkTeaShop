package vn.edu.nlu.fit.Auth;

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

@WebServlet("/DoConfirmRegister")
public class DoConfirmRegister extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        response.getWriter().println(key);
        String sql = "SELECT id, `key`, active FROM users where `key`=?";
        PreparedStatement qr = null;
        try {
            qr = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            qr.setString(1, key);
            ResultSet sr1 = qr.executeQuery();
            sr1.last();
            int count = sr1.getRow();

            String id = sr1.getString("id");
            if (count==1) {
                sr1.updateInt("active", 1);
                sr1.updateRow();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
