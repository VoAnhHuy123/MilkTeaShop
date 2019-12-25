package vn.edu.nlu.fit.Controller.Display;

import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.Item;
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
import java.util.ArrayList;

@WebServlet("/LogOut")
public class LogOut extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        ShoppingCart shoppingCart = user.getShoppingCart();
        String sql ="SELECT * FROM shopping_cart WHERE user_id=?";
        String count="SELECT COUNT(id) FROM shopping_cart WHERE user_id=?";
        try {
            PreparedStatement prCount=ConnectionDB.connect(count);
            prCount.setInt(1, user.getId());
            int rsCount = prCount.executeUpdate();
            PreparedStatement prUser = ConnectionDB.connect(sql);
            prUser.setInt(1, user.getId());
            ResultSet rsUser = prUser.executeQuery();
            int co=0;
            ArrayList<Item> arrayList = (ArrayList<Item>) shoppingCart.getListItem();
            for (int i=0; i  <arrayList.size(); i++) {
                rsUser.next();
                rsUser.updateDouble("price", arrayList.get(i).getPrice());
                rsUser.updateInt("user_id", user.getId());
                rsUser.updateInt("product_id", arrayList.get(i).getProductId());
                rsUser.updateInt("quality", arrayList.get(i).getQuantity());
                rsUser.updateInt("quality", arrayList.get(i).getQuantity());
            }
            while (rsUser.next()){
//                rsUser.updateDouble("price", );
            }
            if (shoppingCart.getListItem().size() > rsCount){
                rsUser.moveToInsertRow();
            }
            session.invalidate();
            response.sendRedirect("http://localhost:8080/MilkTeaShop/Index");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
