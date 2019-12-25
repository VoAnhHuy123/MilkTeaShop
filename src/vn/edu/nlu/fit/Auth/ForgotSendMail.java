package vn.edu.nlu.fit.Auth;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.ServletContext;
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
import java.util.Random;

@WebServlet("/ForgotSendMail")
public class ForgotSendMail extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;
    private String key;

    public void init() {
        // reads SMTP server setting from web.xml file
        Random rand = new Random();
        int n = rand.nextInt(90000) + 10000;
        String pass1 = String.valueOf(n);
        key = BCrypt.hashpw(pass, BCrypt.gensalt(12));
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf8");
        HttpSession session = request.getSession();
        String recipient = request.getParameter("email");
        String sql = "SELECT * FROM users WHERE email=? AND active=1";
        try {
            PreparedStatement preEmail = ConnectionDB.connect(sql);
            preEmail.setString(1,recipient);
            ResultSet rsEmail = preEmail.executeQuery();
            rsEmail.last();
            int count = rsEmail.getRow();
            if (count==1){
                rsEmail.updateString("key", key);
                rsEmail.updateRow();
                String resultMessage = "";
                try {

                    ChangepassEmail.sendEmail(host, port, user, pass, recipient, null,
                            null, key);
                } catch (Exception ex) {
                    ex.printStackTrace();
                    resultMessage = "There were an error: " + ex.getMessage();
                } finally {
                    session.setAttribute("OK","");
                    response.sendRedirect("http://localhost:8080/MilkTeaShop/Login");
                }
            }else{
                session.setAttribute("ERRO","");
                response.sendRedirect("http://localhost:8080/MilkTeaShop/ForgotPassword");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }





        doGet(request, response);
    }

}
