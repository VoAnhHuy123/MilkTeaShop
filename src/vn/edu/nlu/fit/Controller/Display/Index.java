package vn.edu.nlu.fit.Controller.Display;

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
import java.sql.Statement;

import static vn.edu.nlu.fit.DB.ConnectionDB.con;

@WebServlet("/Index")
public class Index extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    //    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String sql = "SELECT * FROM type WHERE active=1";
//        String sql1 = "SELECT * FROM product WHERE active=1";
//        PreparedStatement qr=null;
//        PreparedStatement qr1=null;
//        try {
////            String sqll = "select name "
//          qr = ConnectionDB.connect(sql);
//           qr1 = ConnectionDB.connect(sql1);
//            ResultSet sr1 = qr.executeQuery();
//            ResultSet sr2 = qr1.executeQuery();
//            request.setAttribute("a", sr1);
//            request.setAttribute("b", sr2);
//            request.getRequestDispatcher("Index.jsp").forward(request, response);
////            request.getRequestDispatcher("Listproduct.jsp").forward(request, response);
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf8");
        try {
            String sql = "SELECT * FROM type WHERE active=1";
            //new product
            String sql1 = "SELECT * FROM product WHERE active=1 AND type_id='1'";
            String sql2 = "SELECT * FROM product WHERE active=1 AND type_id='3'";
            String sql3 = "SELECT * FROM product WHERE active=1 AND type_id='2'";
//            future products
            String sql4 = "SELECT * FROM futured_product WHERE active=1";
            //slider
            String sql5 = "SELECT * FROM slider";
            //futured product
            String sql_futured = "SELECT * FROM futured_product WHERE active=1";


            PreparedStatement s = ConnectionDB.connect(sql);
            PreparedStatement s1 = ConnectionDB.connect(sql1);
            PreparedStatement s2 = ConnectionDB.connect(sql2);
            PreparedStatement s3 = ConnectionDB.connect(sql3);
            PreparedStatement s4 = ConnectionDB.connect(sql4);
            PreparedStatement s5 = ConnectionDB.connect(sql5);
            PreparedStatement s6 = ConnectionDB.connect(sql_futured);

//sửa
            ResultSet sr1 = s.executeQuery();
            ResultSet sr2 = s1.executeQuery();
            ResultSet sr3 = s2.executeQuery();
            ResultSet sr4 = s3.executeQuery();
            ResultSet sr5 = s4.executeQuery();
            ResultSet sr6 = s5.executeQuery();
            ResultSet sr7 = s6.executeQuery();

            request.setAttribute("a", sr1);
            request.setAttribute("b", sr2);
            request.setAttribute("c", sr3);
            request.setAttribute("d", sr4);
            request.setAttribute("e", sr5);
            request.setAttribute("f", sr6);
            request.setAttribute("g", sr7);
            request.getRequestDispatcher("Index.jsp").forward(request, response);
//            request.getRequestDispatcher("Listproduct.jsp").forward(request, response);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
