package vn.edu.nlu.fit.Auth;

//import org.mindrot.jbcrypt.BCrypt;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.nlu.fit.Controller.Display.ListProduct;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.*;

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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import static vn.edu.nlu.fit.DB.ConnectionDB.con;
import static vn.edu.nlu.fit.DB.ConnectionDB.connect;

@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String spl = "SELECT * FROM users WHERE email=?";
        String sql = "SELECT  size,product_id,shopping_cart.id,shopping_cart.price,product.`name`, product.image, quality, topping FROM shopping_cart JOIN product on shopping_cart.product_id= product.id WHERE user_id=?";
        PreparedStatement pre = null;
        PreparedStatement pre2 = null;
        PreparedStatement psTopping= null;
        try {
            pre = ConnectionDB.connect(spl);
            pre.setString(1, email);
            ResultSet rs = pre.executeQuery();
            rs.next();

            boolean valuate = BCrypt.checkpw(pass, rs.getString("password"));
            rs.last();
            int count = rs.getRow();
            rs.first();

            if ((count == 1) && (valuate == true) && (rs.getInt("active")==1)) {

                //newUser
                HttpSession session = request.getSession();
                User user = new User();
                List<Address> addressList = new ArrayList<>();
                user.setAddressList(addressList);
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setFirst_name(rs.getString("first_name"));
                user.setLast_name(rs.getString("last_name"));
                user.setPhone(rs.getString("phone"));
                //admin
                if ((count == 1) && (valuate == true) && (rs.getInt("active")==1) && (rs.getInt("admin") ==1)){
                    user.setAdmin(1);
                }
                //setShoppingCart
                pre2 = ConnectionDB.connect(sql);
                pre2.setInt(1, rs.getInt("id"));
                ResultSet rs2 = pre2.executeQuery();
//                response.getWriter().println(rs.getInt("id"));

                ShoppingCart shoppingCart = new ShoppingCart();
                while (rs2.next()) {

                    List<Topping> toppings= new ArrayList<>();
                    Item item = new Item(toppings);
//                    item.setId(rs2.getInt("id"));
                    item.setName(rs2.getString("name"));
                    item.setImage(rs2.getString("image"));
                    item.setQuantity(rs2.getInt("quality"));
                    item.setPrice(rs2.getDouble("price"));
                    item.setProductId(rs2.getInt("product_id"));
                    item.setSize(rs2.getString("size"));
                    if (rs2.getInt("topping") == 1) {

                        String getTopping = "SELECT topping.`name`, topping.price FROM topping_shoppingcart JOIN topping on topping_shoppingcart.id_topping=topping.id\n" +
                                "WHERE id_shoppingCart=?";
                        psTopping = ConnectionDB.connect(getTopping);
                        psTopping.setInt(1, rs2.getInt("id"));
                        ResultSet rsTopping = psTopping.executeQuery();

                       while (rsTopping.next()){
                           Topping topping = new Topping();
                           topping.setName(rsTopping.getString("name"));
                           topping.setPrice(rsTopping.getDouble("price"));
                           toppings.add(topping);

                       }

                    }

//                    response.getWriter().println(item.getToppingList().get(0).getName());
                    shoppingCart.setListItem(item);
//                    response.getWriter().println("adsad");
                }
                user.setShoppingCart(shoppingCart);
                session.setAttribute("user", user);
                response.sendRedirect("/MilkTeaShop/Index");
            } else {
                response.getWriter().println("sai tai khoan");

            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
