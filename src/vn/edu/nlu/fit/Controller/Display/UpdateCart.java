package vn.edu.nlu.fit.Controller.Display;

import com.google.gson.Gson;
import vn.edu.nlu.fit.Model.User;

//import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/UpdateCart")
public class UpdateCart extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session =request.getSession();
        User user = (User) session.getAttribute("user");
        String index = request.getParameter("index");
        int indexInt = Integer.parseInt(index);
        String quantity = request.getParameter("quantity");
        int quantityInt = Integer.parseInt(quantity);
        user.getShoppingCart().updateSize(indexInt,quantityInt);

        Gson gson = new Gson();
        String jsonPro = gson.toJson(user);
        response.setContentType("application/json");
        response.getWriter().println(jsonPro);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
