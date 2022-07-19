/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import config.Config;
import java.io.IOException;
import java.sql.SQLException;
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
            case "submit":
                login(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            case "save":
                save(request, response);
                break;
            default:
                break;
        }
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    private void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        request.setAttribute("controller", "home");
        request.setAttribute("action", "index");
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
            } else {
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

    private void save(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            CustomersManager cusManager = new CustomersManager();
            String fullname = request.getParameter("fullname");
            String username = request.getParameter("username");
            String password = request.getParameter("pw");
            String confirmPw = request.getParameter("Cpw");
            int gender = Integer.parseInt(request.getParameter("gender"));
            String address = request.getParameter("address");
            
            //validation
            if (cusManager.checkDuplicateUsername(username)) {
                request.setAttribute("fullname", fullname);
                request.setAttribute("address", address);
                request.setAttribute("username", username);
                request.setAttribute("pw", password);
                request.setAttribute("Cpw", confirmPw);
                request.setAttribute("controller", "user");
                request.setAttribute("action", "register");
                request.setAttribute("messageUN", "username has been used by another person!");
                return;
            }
            
            //check if password and confirm password matched or not
            if (password.equals(confirmPw)) {
                //check if password meet the condition or not (8 digit,one lower,upper, special digit)
                String pattern = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
                if (password.matches(pattern)) {
                    Customers cus = new Customers(fullname, username, password, gender, address);
                    if (cusManager.register(cus)) {
                        request.setAttribute("controller","user");
                        request.setAttribute("action","login");
                    }
                } else {
                    request.setAttribute("fullname", fullname);
                    request.setAttribute("address", address);
                    request.setAttribute("username", username);
                    request.setAttribute("pw", password);
                    request.setAttribute("Cpw", confirmPw);
                    request.setAttribute("controller", "user");
                    request.setAttribute("action", "register");
                    request.setAttribute("messagePW", "password must contain at least 8 letters with lower,upper letter and a special digit!");
                }
            } else {
                request.setAttribute("fullname", fullname);
                request.setAttribute("address", address);
                request.setAttribute("username", username);
                request.setAttribute("pw", password);
                request.setAttribute("Cpw", confirmPw);
                request.setAttribute("controller", "user");
                request.setAttribute("action", "register");
                request.setAttribute("messagePW", "Confirm password doesn't match!");
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
