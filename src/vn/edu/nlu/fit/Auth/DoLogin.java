package vn.edu.nlu.fit.Auth;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.ShoppingCart;
import vn.edu.nlu.fit.Model.User;

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

import static vn.edu.nlu.fit.DB.ConnectionDB.con;
import static vn.edu.nlu.fit.DB.ConnectionDB.connect;

@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
//        response.getWriter().println(email);
//        String hash = BCrypt.hashpw(pass, BCrypt.gensalt(12));
//        response.getWriter().println(hash);
        String spl = "SELECT * FROM users WHERE email=?";
        String sql ="SELECT * FROM shopping_cart WHERE user_id=?";
        PreparedStatement pre=null;
        PreparedStatement pre2 = null;
        try {
            //spl
            pre = ConnectionDB.connect(spl);
            pre.setString(1, email);
            ResultSet rs = pre.executeQuery();
            rs.next();
           //ens spl

            boolean valuate = BCrypt.checkpw(pass, rs.getString("password"));
            rs.last();
            int count = rs.getRow();
            rs.first();
            if ((count==1) && (valuate==true) ){
                //sql
                pre2 = connect(sql);
                pre2.setInt(1,  rs.getInt("id") );
                ResultSet rs2 = pre2.executeQuery();
                while (rs2.next()){
                    ShoppingCart shoppingCart = new ShoppingCart();
                    shoppingCart.setListItem(rs2.get);
                }
                //end sql
                HttpSession session =  request.getSession();
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setFirst_name(rs.getString("first_name"));
                user.setLast_name(rs.getString("last_name"));
                user.setPhone(rs.getString("phone"));
                session.setAttribute("user", user);

//                response.getWriter().println("afdsf");

                request.getRequestDispatcher("/Index").forward(request,response);
            }else{
                response.getWriter().println("sai tai khoan");

            }
//            boolean valuate = BCrypt.checkpw(pass, "");
//            System.out.println(valuate);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
