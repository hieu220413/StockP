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
import java.util.HashMap;
import java.util.List;
import model.Customers;
import model.Invoice;
import model.InvoiceDetail;
import model.Shoes;
import utils.DBUtil;

/**
 *
 * @author nguye
 */
public class InvoiceManager {

    public static final String SELECT_ALL = "Select *\n"
            + " FROM invoice\n"
            + " AND invoice.customer_id = ?";

    public static final String SELECT_ONE = "Select  s.*,invoice.*\n"
            + " FROM invoice,shoes s, invoice_detail inD\n"
            + " WHERE  s.shoes_id = inD.shoes_id \n"
            + " AND invoice.invoice_id = inD.invoice_id \n"
            + " AND inD.invoice_id = ?"
            + " AND invoice.customer_id = ?";

    public List<Invoice> list(String customerId) throws SQLException {
        Invoice invoice = null;
        ArrayList<Invoice> list = new ArrayList<>();
        Connection con = DBUtil.getConnection();
        if (con != null) {
            PreparedStatement ps = con.prepareStatement(SELECT_ALL);
            ps.setString(1, customerId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                invoice = new Invoice();
                invoice.setInvoiceId(rs.getString("invoice_id"));
                Customers customer = new Customers();
                customer.setCustomerId(rs.getString("customer_id"));
                invoice.setCustomer(customer);
                invoice.setDate(rs.getDate("date"));
                invoice.setTotalPrice(rs.getFloat("all_total_price"));
                list.add(invoice);
            }
        }
        return list;
    }
    
    //not done
    public InvoiceDetail detail(String invoiceId,String customerId) throws SQLException{
        ArrayList<Shoes> list = new ArrayList<>();
        HashMap<Invoice,List> invoiceD = new HashMap<>();        
        Connection con = DBUtil.getConnection();
        Shoes shoes = null;
        Invoice invoice = null;
        InvoiceDetail invoiceDetail = new InvoiceDetail();
        if (con != null) {
            PreparedStatement ps = con.prepareStatement(SELECT_ONE);
            ps.setString(1, invoiceId);
            ps.setString(2, customerId);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                invoice = new Invoice();
                invoice.setInvoiceId(invoiceId);
                invoice.setTotalPrice(rs.getFloat("all_total_price"));
                invoice.setDate(rs.getDate("date"));
                invoice.setCustomer(new Customers(customerId));
                invoiceDetail.setInvoice(invoice);
            }
            while(rs.next()){
               shoes = new Shoes();
               shoes.setName(rs.getString("name"));
               shoes.setImg(rs.getString("image"));
               shoes.setPrice(rs.getFloat("price"));
               shoes.setCategoryId(rs.getString("category_id"));
               //thieu quantity voi size 
               list.add(shoes);
            }
            invoiceDetail.setShoe(list);
        }
        return invoiceDetail;
    } 
}
