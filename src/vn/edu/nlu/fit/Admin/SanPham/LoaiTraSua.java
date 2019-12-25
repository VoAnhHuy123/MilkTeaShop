package vn.edu.nlu.fit.Admin.SanPham;

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

@WebServlet("/LoaiTraSua")
public class LoaiTraSua extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf8");
        request.setCharacterEncoding("utf8");
        String loai = request.getParameter("loai");
        String sql;
        try {
            String query = "SELECT id, name FROM type";
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet resultSet = preparedStatement.executeQuery(query);
            request.setAttribute("rs", resultSet);

            if(loai==null){
                sql = "SELECT type.id, product.image, product.`name`, type.`name`, product.price, product.sale_percent, product.active, product.sale_price FROM type JOIN product ON type.id=product.type_id";
            }else {
                sql = "SELECT type.id, product.image, product.`name`, type.`name`, product.price, product.sale_percent, product.active, product.sale_price FROM type JOIN product ON type.id=product.type_id WHERE product.type_id = '"+loai+"'";
            }
            PreparedStatement qr = ConnectionDB.connect(sql);
            ResultSet rs = qr.executeQuery(sql);
            request.setAttribute("a", rs);

            request.getRequestDispatcher("Admin/light/listProducts.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
