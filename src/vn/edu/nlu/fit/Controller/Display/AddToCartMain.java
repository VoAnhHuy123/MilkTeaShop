package vn.edu.nlu.fit.Controller.Display;

import com.google.gson.Gson;
import vn.edu.nlu.fit.Model.Item;
import vn.edu.nlu.fit.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AddToCartMain")
public class AddToCartMain extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String json = request.getParameter("t");
        Gson g = new Gson();
        Item item = g.fromJson(json, Item.class);
        int quantity = item.getQuantity();
        if (user.getShoppingCart().getListItem()==null){
            user.getShoppingCart().getListItem().add(item);
        }else if (user.getShoppingCart().isExist(item)!=null){
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
//                    rsEdit.updateString("size", user.getShoppingCart().isExist(item).getSize());
//                    rsEdit.updateRow();
//                    response.getWriter().println("safsaf");
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
//                    rsInsert.updateString("size", item.getSize());
//                    rsInsert.insertRow();
//                    rsInsert.updateRow();
//                    item.setId(rsInsert.getInt("id"));
//                    item.setId(user.getShoppingCart().setNewId());


        }


        Gson gson = new Gson();
        String users = gson.toJson(user);
        response.getWriter().write(users);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
