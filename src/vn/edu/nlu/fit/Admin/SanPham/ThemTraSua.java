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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ThemTraSua")
public class ThemTraSua extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf8");
        request.setCharacterEncoding("utf8");
        String name = request.getParameter("name");
        String loai = request.getParameter("loai");
        String si = request.getParameter("id");
        String gia = request.getParameter("gia");
        String sale = request.getParameter("sale");
        String active = request.getParameter("active");
        String img = request.getParameter("chưa làm");
        try {
            String querySize = "SELECT id FROM size";
//            response.getWriter().println(querySize);
            PreparedStatement preSize = ConnectionDB.connect(querySize);
            ResultSet resulSize = preSize.executeQuery();
            while (resulSize.next()) {
                String idSize = resulSize.getString("id");
//                response.getWriter().println(si);
//                response.getWriter().println(resulSize);
                if(si.equals(idSize))
                    si = idSize;
//                response.getWriter().println(si);
//                resulSize.rowDeleted();
                break;
            }

            String queryLoai = "SELECT id FROM type";
            PreparedStatement preLoai = ConnectionDB.connect(queryLoai);
            ResultSet resulLoai = preLoai.executeQuery();
            while (resulLoai.next()){
                String idLoai = resulLoai.getString("id");
                if(!loai.equals(idLoai)){
//                    loai = idLoai;
//                    break;
//                }else{
                    String addLoai = "INSERT INTO type (id, name, sale, active) VALUES (?,?,?,?)";
                    PreparedStatement preAddLoai = ConnectionDB.connect(addLoai);
                    preAddLoai.setString(1, loai);
                    preAddLoai.setString(2, loai);
                    preAddLoai.setString(3, sale);
                    preAddLoai.setString(4, active);
                    preAddLoai.executeUpdate();
//                    response.getWriter().println(preAddLoai);
                    break;
                }
           }

//
//
            String sqlThem = "INSERT INTO product (name, image, type_id, active, price, sale_percent, size_id) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pr = ConnectionDB.connect(sqlThem);
//            response.getWriter().println(sqlThem);
            pr.setString(1, name);
            pr.setString(2, img);
            pr.setString(3, loai);
            pr.setString(4, active);
            pr.setString(5, gia);
            pr.setString(6, sale);
            pr.setString(7, si);
            pr.executeUpdate();
            response.sendRedirect(Util.fullPath("LoaiTraSua"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Admin/light/addTraSua.jsp").forward(request, response);
    }
}
