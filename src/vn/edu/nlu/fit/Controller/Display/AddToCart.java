package vn.edu.nlu.fit.Controller.Display;
//

import com.google.gson.Gson;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.Item;
import vn.edu.nlu.fit.Model.ShoppingCart;
import vn.edu.nlu.fit.Model.Product;
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

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        String id = request.getParameter("id");
        int b = Integer.parseInt(id);
        String sql = "SELECT * FROM shopping_cart WHERE id=?";
        String sql1 = "SELECT * FROM product WHERE id=?";
        String insert = "INSERT INTO shopping_cart (`name`, price,image,user_id,topping_id,product_id,quality,active)\n" +
                "VALUES (?,?,?,?,?,?,?,?)";
        PreparedStatement a = null;
        PreparedStatement aa = null;
        PreparedStatement aaa = null;
        try {
            a = ConnectionDB.connect(sql);
            a.setInt(1, b);
            ResultSet rs = a.executeQuery();
            while (rs.next()) {
                if (rs.getInt("id") == b) {
                    int soluong = rs.getInt("quality");
                    rs.updateInt("quality", soluong + 1);
                } else {
                    rs.moveToInsertRow();
                }
            }
            aa = ConnectionDB.connect(sql1);
            aa.setString(1, id);
            ResultSet rs1 = aa.executeQuery();
            rs1.first();
            // tao san pham
            Product pro = new Product();
            pro.setName(rs1.getString("name"));
            pro.setId(rs1.getInt("id"));
            pro.setActive(rs1.getInt("active"));
            pro.setImage(rs1.getString("image"));
            pro.setPrice(rs1.getDouble("price"));
            // tao ra item
//           pro.setUser_id(user.getId());
            Item item = new Item();
            item.setProduct(pro);
            item.setQuantity(1);
            item.setPrice();
            ArrayList<Item> listItem = new ArrayList<>();
            listItem.add(item);
            // tao order
            ShoppingCart cart = new ShoppingCart();
            cart.setListItem(listItem);
            cart.setStatus(1);
            cart.setUser_id(user.getId());


            aaa = ConnectionDB.connect(insert);
            aaa.setString(1,item.getProduct().getName());
            aaa.setLong(2,item.getPrice());
            aaa.setString(3,item.getProduct().getImage());
            aaa.setInt(4, user.getId());
//            aaa.setInt(5, );
            ResultSet intsertRow = aaa.executeQuery();
//            MilkTea milkTea = new MilkTea();
//            milkTea.setName(rs.getString("name"));
//            String json =  "{\"name\":\"" + rs.getString("name") + "\", \"age\":" + rs.getInt("type_id") + ", \"city\":" + rs.getDouble("price")+"}";
//            String js = "{\"name\":\"John\", \"age\":30, \"city\":\"New York\"}";

            Gson gson = new Gson();
            String jsonPro = gson.toJson(pro);
            // Now do the magic.

//            request.setAttribute("milktea", milkTea);


//            response.setContentType("application/json");
            response.getWriter().write("ditme");


        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
