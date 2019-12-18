package vn.edu.nlu.fit;

import vn.edu.nlu.fit.Model.Item;
import vn.edu.nlu.fit.Model.ShoppingCart;
import vn.edu.nlu.fit.Model.Topping;
import vn.edu.nlu.fit.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession se = request.getSession();
        User user = (User) se.getAttribute("user");
        Topping top = new Topping("ga", 455);
        Topping top1 = new Topping("ga1", 455);
        Topping top2 = new Topping("ga4", 455);
        ArrayList<Topping> g = new ArrayList<Topping>();
        g.add(top);
        g.add(top1);

        Item item = new Item();
        item.setPrice(20000);
        item.setQuantity(1);
        item.setProductId(1);
        item.setImage("image/image_static/tra_sua/1.png");
//        item.setToppingList(g);
        for (Item items: user.getShoppingCart().getListItem()) {
           if (items.getProductId() ==1){
               response.getWriter().println(items.getName());
               response.getWriter().println(items.getToppingList());
           }

        }
        response.getWriter().println(user.getShoppingCart().isExist(item) != null);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
