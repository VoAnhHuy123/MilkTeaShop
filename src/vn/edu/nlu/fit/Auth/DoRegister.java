package vn.edu.nlu.fit.Auth;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.ServletContext;
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
import java.util.Date;
import java.util.Random;

import static vn.edu.nlu.fit.DB.ConnectionDB.con;

@WebServlet("/DoRegister")
public class DoRegister extends HttpServlet {
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
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String tel = request.getParameter("telephone");
        String pass = request.getParameter("password");
//        Date date = new Date();
//        response.getWriter().println(date.toLocaleString());
        String hash = BCrypt.hashpw(pass, BCrypt.gensalt(12));
        response.getWriter().println(firstName);
        response.getWriter().println(lastName);
        response.getWriter().println(email);
        response.getWriter().println(tel);

        try {
            response.getWriter().println("b");
            Statement st = ConnectionDB.connect();
            String a = "insert into users(first_name,last_name,phone,email,`password`,`key`)values(?,?,?,?,?,?)";
            PreparedStatement gg = con.prepareStatement(a);
            gg.setString(1, firstName);
            gg.setString(2, lastName);
            gg.setString(3, tel);
            gg.setString(4, email);
            gg.setString(5, hash);
            gg.setString(6, key);
            int g = gg.executeUpdate();

//            int sql = st.executeUpdate("insert into user(firstname,lastname,phone,email,active,pass)values('" + firstName + "','" + lastName + "','" + tel + "','" + email + "','0','" + hash + "')");
//            response.getWriter().println(sql);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.getWriter().println("sdfs");
        response.setCharacterEncoding("UTF-8");
        String recipient = request.getParameter("email");
        String first_name = request.getParameter("firstname");
        String last_name = request.getParameter("lastname");


        String resultMessage = "";

        try {

            EmailUtility.sendEmail(host, port, user, pass, recipient, first_name,
                    last_name, key);

            resultMessage = "Mail xác thực đã gửi tới email " + recipient;
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/Result.jsp").forward(
                    request, response);
        }

        doGet(request, response);
    }
}
