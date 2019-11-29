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

@WebServlet("/Register")
public class Resgister extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Statement s= ConnectionDB.connect();
            Statement s1= ConnectionDB.connect();

            String sql = "SELECT * FROM type WHERE active=1";
            String sql1 = "SELECT name,type_id,image FROM product WHERE active=1";
//            String sqll = "select name "
            PreparedStatement qr = con.prepareStatement(sql);
            PreparedStatement qr1 = con.prepareStatement(sql1);


            ResultSet sr1 = qr.executeQuery();
            ResultSet sr2 = qr1.executeQuery();
            request.setAttribute("a", sr1);
            request.setAttribute("b", sr2);
            request.getRequestDispatcher("Register.jsp").forward(request, response);
//            request.getRequestDispatcher("Listproduct.jsp").forward(request, response);
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
