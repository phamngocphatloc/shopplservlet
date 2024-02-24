/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import entry.accounts;
import entry.item;
import entry.order;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author exnpt
 */
@WebServlet(name = "checkout", urlPatterns = {"/checkout"})
public class checkout extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
             HttpSession session = request.getSession();
             order order = (order) session.getAttribute("order");
             request.setAttribute("listorder", order.getListitem());
             request.setAttribute("soluong", order.getListitem().size());
             int tongcong = total(order.getListitem());
             request.setAttribute("total", tongcong);
             if (session.getAttribute("username") != null){
                String username = String.valueOf(session.getAttribute("username"));
                String password = String.valueOf(session.getAttribute("password"));
                 accounts acc = new dao.Dao().getaccounts(username, password);
              request.setAttribute("lastname", acc.getFirstname());
              request.setAttribute("firstname", acc.getLastname());
              request.setAttribute("email", acc.getEmail());
            }
             request.getRequestDispatcher("/checkout.jsp").forward(request, response);
    }
    public int total (List<item> list){
        int tongcong = 0;
             for (item item : list){
                 tongcong += item.getProduct().getPrice()*item.getQuantity();
             }
        return tongcong;
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
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            order order = (order) session.getAttribute("order");
            String promo = request.getParameter("promocode");
            if (promo != null){
                if (promo.equalsIgnoreCase("magiamgia")){
                    request.setAttribute("sale", "100000");
                    int total = total(order.getListitem());
                    request.setAttribute("promo", promo);
                    request.setAttribute("total", total - 100000);
                    request.getRequestDispatcher("checkout.jsp").forward(request, response);
                }else{
                    request.getRequestDispatcher("checkout.jsp").forward(request, response);
                }
            }
            entry.checkout checkout = new entry.checkout();
            checkout.setMadonhang(ma());
            checkout.setFirstname(request.getParameter("firstname"));
            checkout.setLastname(request.getParameter("lastname"));
            if (session.getAttribute("username")!=null){
                checkout.setUsername(String.valueOf(session.getAttribute("username")));
            }
            checkout.setEmail(request.getParameter("email"));
            checkout.setAddress(request.getParameter("address"));
            checkout.setPhone(request.getParameter("phone"));
            checkout.setZip(request.getParameter("zip"));
            checkout.setOrder((order) session.getAttribute("order"));
            int price = total(order.getListitem());
            checkout.setPrice(price);
            checkout.setTime(new Date(System.currentTimeMillis()));
            String listproductorder = "";
            for (item item : order.getListitem()){
                listproductorder += "Tên Sản Phẩm: "+ item.getProduct().getName() + " SL :" + item.getQuantity() + "\n";
            }
            if (new dao.Dao().checkout(checkout, listproductorder)==true){
                session.removeAttribute("order");
                String mess = "Đặt Hàng Thành Công! Mã Đơn Hàng: "+checkout.getMadonhang();
                String trangthai = "success";
                request.setAttribute("mess", mess);
                request.setAttribute("trangthai", trangthai);
                request.getRequestDispatcher("/checkout.jsp").forward(request, response);
            }
    }
    public String ma() {
        Random rd = new Random();
        String random = "0123456789";
        String ma = "";
        int lenght = 8;
        char allma[] = new char[lenght];
        for (int i = 0; i < lenght; i++) {
            allma[i] = random.charAt(rd.nextInt(random.length()));
        }
        for (int i = 0; i < allma.length; i++) {
            ma += allma[i];
        }
        return ma;
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
