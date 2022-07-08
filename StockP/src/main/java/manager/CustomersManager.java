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
import utils.DBUtil;

/**
 *
 * @author nguye
 */
public class CustomersManager {
    private static final String CHECK_LOGIN = "SELECT * FROM customers WHERE username = ? AND [password] = ? ";
    
    /**
     * check username and password 
     * @param username customer's username
     * @param password customer's password
     * @return <code>model.Customers</code>, if the username or password incorrect, the value returned is <code>null</code>
     * @throws SQLException 
     */
    public Customers login(String username,String password) throws SQLException{
        Customers cus = null;
        Connection con = DBUtil.getConnection();
        if(con != null){
            PreparedStatement ps = con.prepareStatement(CHECK_LOGIN);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                if(rs.getString("customer_id") != null){
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
}
