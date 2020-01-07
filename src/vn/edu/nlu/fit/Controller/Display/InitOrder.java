package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.Model.Order;
import vn.edu.nlu.fit.Model.ShoppingCart;
import vn.edu.nlu.fit.Model.User;
import vn.edu.nlu.fit.util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/InitOrder")
public class InitOrder extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String totalPrice = request.getParameter("totalPrice");
        String giamgia = request.getParameter("giamgia");

        int intTotalPrice = Integer.parseInt(totalPrice);
        int intGiamgia = Integer.parseInt(giamgia);
        HttpSession session1 = request.getSession();
        User user = (User) session1.getAttribute("user");
        Order order = new Order();
        ShoppingCart shoppingCart = user.getShoppingCart();
        order.setShoppingCart(shoppingCart);
        order.setPrice(intTotalPrice);
        order.setCouponPrice(intGiamgia);
        order.setStatus("Chưa thanh toán");
        HttpSession session11 = request.getSession();
        session11.setAttribute("order", order);
//        request.getRequestDispatcher(Util.fullPath("ChooseAddress")).forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
