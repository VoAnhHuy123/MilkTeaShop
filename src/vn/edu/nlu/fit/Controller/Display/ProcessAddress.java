package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.Model.Address;
import vn.edu.nlu.fit.Model.Order;
import vn.edu.nlu.fit.Model.User;
import vn.edu.nlu.fit.util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/ProcessAddress")
public class ProcessAddress extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexAddress = request.getParameter("index");
        int intIndex = Integer.parseInt(indexAddress);
        HttpSession session1 = request.getSession();
        User user = (User) session1.getAttribute("user");
        Address address = user.getAddressList().get(intIndex);
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        order.setAddress(address);
        response.sendRedirect(Util.fullPath("CheckOut"));

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
