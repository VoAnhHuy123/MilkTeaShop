package vn.edu.nlu.fit.Admin.SanPham;

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

@WebServlet("/DeleteTraSua")
public class DeleteTraSua extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf8");
        request.setCharacterEncoding("utf8");
        String name = request.getParameter("stt");
        try {
            String sql = "DELETE FROM product WHERE id = '"+name+"'";
            PreparedStatement preparedStatement = ConnectionDB.connect(sql);
            preparedStatement.executeUpdate();
            response.sendRedirect(Util.fullPath("LoaiTraSua"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
