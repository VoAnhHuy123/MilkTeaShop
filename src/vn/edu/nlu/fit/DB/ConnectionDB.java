package vn.edu.nlu.fit.DB;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


public class ConnectionDB {
    public static Connection con;

    public static PreparedStatement connect(String spl) throws ClassNotFoundException, SQLException, SQLException {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data_tatua?useUnicode=true&characterEncoding=utf-8", "root", "");
            return (PreparedStatement) con.prepareStatement(spl, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } else {
            return (PreparedStatement) con.prepareStatement(spl, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        }

    }
}
