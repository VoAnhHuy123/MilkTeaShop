package vn.edu.nlu.fit.Controller.Display;


import com.google.gson.Gson;
import com.mysql.jdbc.PreparedStatement;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Model.Item;
import vn.edu.nlu.fit.Model.Product;
import vn.edu.nlu.fit.Model.ShoppingCart;
import vn.edu.nlu.fit.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/AddToCartSmall")
public class AddToCartSmall extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        String id = request.getParameter("id");
        int idInt = Integer.parseInt(id);
//        String sql = "SELECT * FROM shopping_cart WHERE id=?";
        String sqlProduct = "SELECT * FROM product WHERE id=?";
//        String insert = "INSERT INTO shopping_cart (`name`, price,image,user_id,topping_id,product_id,quality,active)\n" +
//                "VALUES (?,?,?,?,?,?,?,?)";
        PreparedStatement psProduct = null;
        PreparedStatement psEdit = null;
        PreparedStatement psInsert=null;
        PreparedStatement aa = null;
        PreparedStatement aaa = null;


        try {
            psProduct = ConnectionDB.connect(sqlProduct);
            psProduct.setInt(1, idInt);
            ResultSet rsProduct = psProduct.executeQuery();
            rsProduct.next();
            Item item = new Item();
            int quantity=1;
            item.setImage(rsProduct.getString("image"));
            item.setName(rsProduct.getString("name"));
            item.setPrice(rsProduct.getDouble("price"));
            item.setQuantity(quantity);
            item.setProductId(idInt);
            item.setSize("L");

//            for (Item items:user.getShoppingCart().getListItem()) {
                if (user.getShoppingCart().isExist(item)!=null){
                    quantity+=user.getShoppingCart().isExist(item).getQuantity();
                    user.getShoppingCart().isExist(item).setQuantity(quantity);
                    user.getShoppingCart().isExist(item).setPrice( user.getShoppingCart().isExist(item).getPrice()+ item.getPrice());
//                    //editdatabase
//                    String sqlEdit="SELECT * FROM shopping_cart WHERE id=?";
//                    psEdit = ConnectionDB.connect(sqlEdit);
//                    psEdit.setInt(1,user.getShoppingCart().isExist(item).getId());
//                    ResultSet rsEdit = psEdit.executeQuery();
//                    rsEdit.first();
//                    rsEdit.updateInt("quality", user.getShoppingCart().isExist(item).getQuantity());
//                    rsEdit.updateDouble("price", user.getShoppingCart().isExist(item).getPrice());
//                    rsEdit.updateRow();
                }else{
                    user.getShoppingCart().getListItem().add(item);
//                    String splInsert = "SELECT * FROM shopping_cart";
//                    psInsert = ConnectionDB.connect(splInsert);
//                    ResultSet rsInsert = psInsert.executeQuery();
//                    rsInsert.moveToInsertRow();
//                    rsInsert.updateDouble("price", item.getPrice());
//                    rsInsert.updateInt("user_id", user.getId());
//                    rsInsert.updateInt("product_id", item.getProductId());
//                    rsInsert.updateInt("quality", item.getQuantity());
//                    rsInsert.updateInt("active", 1);
//                    rsInsert.insertRow();
//                    rsInsert.updateRow();
//                    item.setId(rsInsert.getInt("id"));
                }

//            }


            Gson gson = new Gson();
            String jsonPro = gson.toJson(user);
            response.setContentType("application/json");
            response.getWriter().println(jsonPro);


        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
