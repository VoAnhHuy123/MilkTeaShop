package vn.edu.nlu.fit.Controller.Display;

import com.google.gson.Gson;
import vn.edu.nlu.fit.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/DeleteFromCartMain")
public class DeleteFromCartMain extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        String  id = request.getParameter("id");
        int idInt = Integer.parseInt(id);
        //get user
        User user = (User) session.getAttribute("user");
        //delete item
        user.getShoppingCart().removeItem(idInt);
        Gson gson = new Gson();
        String users = gson.toJson(user);
        //sendto funtion deleteFromCart
        response.setContentType("application/json");
        response.getWriter().write(users);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
