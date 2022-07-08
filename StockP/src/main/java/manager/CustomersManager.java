/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Customers;
import sun.font.TrueTypeFont;
import utils.DBUtil;

/**
 *
 * @author nguye
 */
public class CustomersManager {

    private static final String CHECK_LOGIN = "SELECT * FROM customers WHERE username = ? AND [password] = ? ";
    private static final String REGISTER = "INSERT into customers VALUES (?,?,?,?,?);";
    private static final String CHECK_DUPLICATE_USERNAME = "SELECT * FROM customers WHERE username = ?";

    /**
     * Check username and password
     *
     * @param username customer's username
     * @param password customer's password
     * @return <code>model.Customers</code>, if the username or password
     * incorrect, the value returned is <code>null</code>
     * @throws SQLException
     */
    public Customers login(String username, String password) throws SQLException {
        Customers cus = null;
        Connection con = DBUtil.getConnection();
        if (con != null) {
            PreparedStatement ps = con.prepareStatement(CHECK_LOGIN);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getString("customer_id") != null) {
                    cus = new Customers();
                    cus.setCustomerId(rs.getString("customer_id"));
                    cus.setName(rs.getString("name"));
                    cus.setUsername(rs.getString("username"));
                    cus.setGender(rs.getInt("gender"));
                    cus.setAddress(rs.getString("address"));
                }
            }
        }
        return cus;
    }

    /**
     * Insert customer's information to database
     *
     * @param customer <code>model.Customers</code>
     * @return <code>true</code> if insert successfully, else the value returned
     * is <code>false</code>
     * @throws SQLException
     */
    public boolean register(Customers customer) throws SQLException {
        Connection con = DBUtil.getConnection();
        if (con != null) {
            PreparedStatement ps = con.prepareStatement(REGISTER);
            ps.setString(1, customer.getName());
            ps.setString(2, customer.getUsername());
            ps.setInt(3, customer.getGender());
            ps.setString(4, customer.getAddress());
            ps.setString(5, customer.getPassword());
            if (ps.executeUpdate() > 0) {
                return true;
            }
        }
        return false;
    }

    /**
     * Check username has already used by another customer or not
     *
     * @param username Customer's username
     * @return <code>true</code> if username contained in database, else the
     * value returned is <code>false</code>
     * @throws SQLException
     */
    public boolean checkDuplicateUsername(String username) throws SQLException {
        Connection con = DBUtil.getConnection();
        if (con != null) {
            PreparedStatement ps = con.prepareStatement(CHECK_DUPLICATE_USERNAME);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        }
        return false;
    }
}
