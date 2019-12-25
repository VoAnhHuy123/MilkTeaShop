package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.Model.User;
import vn.edu.nlu.fit.util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ProcessEditAccount")
public class ProcessEditAccount extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String firstName = request.getParameter("firstname");
        user.setFirst_name(firstName);
        response.getWriter().println(firstName);
        user.setLast_name(request.getParameter("lastname"));
        user.setEmail(request.getParameter("email"));
        user.setPhone(request.getParameter("telephone"));
        String mess= "success";
      HttpSession session1 = request.getSession();
      session1.setAttribute("mess", mess);
       response.sendRedirect(Util.fullPath("MyAccount"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }
}
