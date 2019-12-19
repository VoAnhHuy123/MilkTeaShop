package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.DB.ConnectionDB;

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
import java.sql.Statement;

@WebServlet("/ListProduct")
public class ListProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf8");
        int type = -1;
        try {
            type = Integer.parseInt(request.getParameter("type"));
        } catch (NumberFormatException e) {
            type = -1;
        }
        int page = 1;
        try {
            page = Integer.parseInt(request.getParameter("page"));
            if (page < 1) page = 1;
        } catch (NumberFormatException e) {
            page = 1;
        }
//        page = (page - 1) * 12;


        try {
            HttpSession session = request.getSession();
            String sql = "SELECT * FROM type WHERE active=1";
            String sqlsp = "SELECT * FROM product WHERE active=1";
            String sqlspc = "SELECT * FROM product WHERE active=1";

            PreparedStatement s = ConnectionDB.connect(sql);
            ResultSet sr = s.executeQuery();
            request.setAttribute("a", sr);

            if (type != -1) {
                sqlsp += " AND type_id= ? ";
                sqlspc += " AND type_id= ? ";
            }
            sqlsp += " limit ?,12";
//            sqlspc += "limit ?,12";
//            xử lý lấy sản phẩm
            PreparedStatement ps = ConnectionDB.connect(sqlsp);
            if (type != -1) {
                ps.setInt(1, type);
                ps.setInt(2, (page - 1) * 12);
            } else {
                ps.setInt(1, (page - 1) * 12);
            }
            ResultSet p = ps.executeQuery();
            request.setAttribute("p", p);

//            xử lý lấy tổng số sản phẩm
            PreparedStatement ps1 = ConnectionDB.connect(sqlspc);
            if (type != -1) {
                ps1.setInt(1, type);
            }
            response.getWriter().println(sqlsp);
            ResultSet rsc = ps1.executeQuery();
            int count=0;
            while(rsc.next()){
                count++;
            }
            rsc.first();
            int sum = rsc.next() ? count / 12 + 1 : 0;
            response.getWriter().println(sum + "tryyu654g3ythj65yhyg");
            request.setAttribute("sum", sum);
            request.setAttribute("type", type);
            request.getRequestDispatcher("Listproduct.jsp").forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
