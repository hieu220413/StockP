/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import config.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import manager.CustomersManager;
import model.Customers;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CustomersController", urlPatterns = {"/user"})
public class CustomersController extends HttpServlet {

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
        switch (action) {
            case "login":
                break;
            case "submit":
                login(request, response);
                break;
            case "logout":
                HttpSession session = request.getSession();
                session.invalidate();
                request.setAttribute("controller", "home");
                request.setAttribute("action", "index");
                break;
            case "register":
                break;
            default:
                //chuyen den trang thong bao loi
                request.setAttribute("controller", "error");
                request.setAttribute("action", "index");
                request.setAttribute("message", "Error when proccessing the request");
        }
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    private void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            CustomersManager cusManager = new CustomersManager();
            Customers cus = null;
            cus = cusManager.login(username, password);
            if (cus != null) {
                HttpSession session = request.getSession();
                session.setAttribute("LOGIN_CUSTOMER", cus);
                request.setAttribute("controller", "home");
                request.setAttribute("action", "index");
            }else{
                request.setAttribute("controller", "user");
                request.setAttribute("action", "login");
                request.setAttribute("message", "username or password is incorrect!");
            }
        } catch (SQLException ex) {
            request.setAttribute("controller", "error");
            request.setAttribute("action", "index");
            request.setAttribute("message", ex.getMessage());
            log("Error at MainController: " + ex.toString());
        }
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
