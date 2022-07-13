/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import manager.ShoesManager;
import model.Cart;
import model.Shoes;

/**
 *
 * @author nguye
 */
@WebServlet(name = "ShoesController", urlPatterns = {"/shoes"})
public class ShoesController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        String action = (String) request.getAttribute("action");
        String controller = (String) request.getAttribute("controller");
        String op = request.getParameter("op");
        switch (action) {
            case "basketball_info": {
                if (op != null) {
                    if (op.equals("search")) {
                        searchList(request, response, "BAE");
                    }
                    if (op.equals("addToCart")) {
                        addHandler(request, response);
                        list(request, response, "BAE");
                    }
                } else {
                    list(request, response, "BAE");
                }
            }
            break;
            case "football_info": {
                if (op != null) {
                    if (op.equals("search")) {
                        searchList(request, response, "FTB");
                    }
                    if (op.equals("addToCart")) {
                        addHandler(request, response);
                        list(request, response, "FTB");
                    }
                } else {
                    list(request, response, "FTB");
                }
            }
            break;
            case "lifestyle_info": {
                if (op != null) {
                    if (op.equals("search")) {
                        searchList(request, response, "LIS");
                    }
                    if (op.equals("addToCart")) {
                        addHandler(request, response);
                        list(request, response, "LIS");
                    }
                } else {
                    list(request, response, "LIS");
                }
            }
            break;
            case "running_info": {
                if (op != null) {
                    if (op.equals("search")) {
                        searchList(request, response, "RUN");
                    }
                    if (op.equals("addToCart")) {
                        addHandler(request, response);
                        list(request, response, "RUN");
                    }
                } else {
                    list(request, response, "RUN");
                }
            }
            break;
            default:
                //chuyen den trang thong bao loi
                request.setAttribute("controller", "error");
                request.setAttribute("action", "index");
                request.setAttribute("message", "Error when proccessing the request");
        }
        request.getRequestDispatcher(config.Config.LAYOUT).forward(request, response);
    }

    protected void list(HttpServletRequest request, HttpServletResponse response, String categoryId)
            throws ServletException, IOException {
        ShoesManager sm = new ShoesManager();
        ArrayList<Shoes> list = sm.getShoes(categoryId);
        request.setAttribute("list", list);
    }

    protected void searchList(HttpServletRequest request, HttpServletResponse response, String categoryId)
            throws ServletException, IOException {
        ShoesManager sm = new ShoesManager();
        String searchText = request.getParameter("searchText");
        ArrayList<Shoes> list = sm.getShoesByName(searchText, categoryId);
        request.setAttribute("list", list);
        HttpSession session = request.getSession();
        session.setAttribute("searchText", searchText);
    }

    protected void addHandler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        int size = Integer.parseInt(request.getParameter("size"));
        ShoesManager sm = new ShoesManager();
        Shoes shoes = sm.find(id);
        shoes.setSize(size);
        HttpSession session = request.getSession();
        if (session.getAttribute("LOGIN_CUSTOMER") == null) {
            request.setAttribute("controller", "user");
            request.setAttribute("action", "login");
        }
        Cart cart = (Cart) session.getAttribute("cart");
        //Neu trong session chua co cart thi tao cart moi
        if (cart == null) {
            cart = new Cart();
            //Luu cart vo session
            session.setAttribute("cart", cart);
        }
        //Them product vao cart
        cart.add(shoes);
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
