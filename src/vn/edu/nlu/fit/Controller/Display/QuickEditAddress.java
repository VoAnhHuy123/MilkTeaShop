package vn.edu.nlu.fit.Controller.Display;

import com.google.gson.Gson;
import vn.edu.nlu.fit.Model.Address;
import vn.edu.nlu.fit.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/QuickEditAddress")
public class QuickEditAddress extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        int index = Integer.parseInt(request.getParameter("index"));
        HttpSession session1 = request.getSession();
        User user = (User) session1.getAttribute("user");
        Address address = user.getAddressList().get(index);
        Gson gson = new Gson();
        String addres = gson.toJson(address);
        response.setContentType("application/json");
        response.getWriter().write(addres);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
