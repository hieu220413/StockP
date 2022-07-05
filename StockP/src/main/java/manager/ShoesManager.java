/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Shoes;
import utils.DBUtil;

/**
 *
 * @author nguye
 */
public class ShoesManager {
    //get shoes by category_id
    public static ArrayList<Shoes> getShoes(String categoryID) throws SQLException {
        ArrayList<Shoes> list = new ArrayList<>();
        //connecting to database
        Connection con = DBUtil.getConnection();
        //creating and executing sql statements
        String sql = "select s.*, "
                + "from shoes s join category c on s.category_id=c.category"
                + "where s.category_id = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, categoryID);
        ResultSet rs = stm.executeQuery();
        //Loading data into the list
        while (rs.next()) {
            Shoes shoes = new Shoes();
            shoes.setShoeId(rs.getString("shoesId"));
            shoes.setName(rs.getString("name"));
            shoes.setImg(rs.getString("img"));
            shoes.setPrice(rs.getFloat("price"));
            shoes.setCategoryId(rs.getString("categoryId"));
            shoes.setCategoryName(rs.getString("categoryName"));
            shoes.setSize(rs.getInt("size"));
            shoes.setAmount(rs.getInt("amount"));
            list.add(shoes);
        }
        //closing the connection 
        con.close();
        return list;
    }
    
    //get shoes by name
        public static ArrayList<Shoes> getShoesByName(String name) throws SQLException {
        ArrayList<Shoes> list = new ArrayList<>();
        //connecting to database
        Connection con = DBUtil.getConnection();
        //creating and executing sql statements
        String sql = "select * from shoes where name like ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, "%" + name + "%");
        ResultSet rs = stm.executeQuery();
        //Loading data into the list
        while (rs.next()) {
            Shoes shoes = new Shoes();
            shoes.setShoeId(rs.getString("shoesId"));
            shoes.setName(rs.getString("name"));
            shoes.setImg(rs.getString("img"));
            shoes.setPrice(rs.getFloat("price"));
            shoes.setCategoryId(rs.getString("categoryId"));
            shoes.setCategoryName(rs.getString("categoryName"));
            shoes.setSize(rs.getInt("size"));
            shoes.setAmount(rs.getInt("amount"));
            list.add(shoes);
        }
        //closing the connection 
        con.close();
        return list;
    }  
}
