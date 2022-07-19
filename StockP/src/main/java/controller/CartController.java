/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import config.Config;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import manager.InvoiceManager;
import model.Cart;
import model.Customers;
import model.Invoice;
import model.InvoiceDetail;
import model.Shoes;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = (String) request.getAttribute("action");
        String controller = (String) request.getAttribute("controller");
        String op = request.getParameter("op");
        if (op != null) {
            if (op.equals("delete")) {
                removeFromCart(request, response);
            } else if (op.equals("addInvoice")) {
                try {
                    String[] shoesId = request.getParameterValues("id");
                    String[] size = request.getParameterValues("size");
                    String[] quantity = request.getParameterValues("quantity");
                    String invoiceId ="IV" + generateRandomChars();
                    Float total_price = Float.valueOf(request.getParameter("total_price"));
                    Date payDate = new Date(System.currentTimeMillis());
                    //check session
                    HttpSession session = request.getSession();
                    Customers customer = (Customers) session.getAttribute("LOGIN_CUSTOMER");
                    if (customer == null) {
                        request.setAttribute("controller", "user");
                        request.setAttribute("action", "login");
                        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                        return;
                    }
                    
                    //create invoice
                    InvoiceManager invoiceManager = new InvoiceManager();
                    Invoice invoice = new Invoice();
                    invoice.setInvoiceId(invoiceId);
                    invoice.setDate(payDate);
                    invoice.setTotalPrice(total_price);
                    invoice.setCustomer(customer);
                    InvoiceDetail invoiceDetail = new InvoiceDetail();
                    invoiceDetail.setInvoice(invoice);
                    Shoes shoe = null;
                    ArrayList<Shoes> shoes = new ArrayList<>();
                    for (int i = 0; i < shoesId.length; i++) {
                        shoe = new Shoes();
                        shoe.setShoeId(shoesId[i]);
                        shoe.setAmount(Integer.valueOf(quantity[i]));
                        shoe.setSize(Integer.valueOf(size[i]));
                        shoes.add(shoe);
                    }
                    invoiceDetail.setShoe(shoes);
                    
                    if (invoiceManager.add(invoice, invoiceDetail)) {
                        //clear cart
                        session = request.getSession();
                        session.setAttribute("cart",null);
                        
                        //forward to invoiceController
                        request.setAttribute("controller", "invoice");
                        request.setAttribute("action", "detail");
                        request.setAttribute("invoiceId", invoiceId);
                        request.setAttribute("customerId", customer.getCustomerId());
                        request.getRequestDispatcher("/invoice").forward(request, response);
                        return;
                    }
                } catch (SQLException ex) {
                    request.setAttribute("controller", "error");
                    request.setAttribute("action", "index");
                    request.setAttribute("message", ex.getMessage());
                }
            }
        }
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    protected void removeFromCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        ArrayList<Shoes> cartList = cart.getCartList();
        Iterator<Shoes> iter = cartList.iterator();
        while (iter.hasNext()) {
            Shoes shoes = iter.next();
            if (shoes.getShoeId().equals(id)) {
                iter.remove();
            }
        }
        cart.setCartList(cartList);
        session.setAttribute("cart", cart);
    }

    private static String generateRandomChars() {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        String candidateChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvw";
        for (int i = 0; i < 5; i++) {
            sb.append(candidateChars.charAt(random.nextInt(candidateChars
                    .length())));
        }
        return sb.toString();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
