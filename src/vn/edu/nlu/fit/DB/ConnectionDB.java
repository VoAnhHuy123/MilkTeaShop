package vn.edu.nlu.fit.DB;

import java.sql.*;

public class ConnectionDB {
    public static Connection con;

    public static PreparedStatement connect(String spl) throws ClassNotFoundException, SQLException {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data_tatua?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.prepareStatement(spl, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } else {
            return con.prepareStatement(spl, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        }

    }
}
