/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import entry.Product;
import entry.item;
import entry.order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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
@WebServlet(name = "addtocart", urlPatterns = {"/addtocart"})
public class addtocart extends HttpServlet {

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
        int quanity = 1;
        int id;
        if (request.getParameter("productId")!= null){
            id = Integer.parseInt(request.getParameter("productId"));
            Product product = new dao.Dao().getproductbyid(id);
            if (product != null){
                HttpSession session = request.getSession();
                if (session.getAttribute("order")==null){
                    order order = new order();
                    List<item> listitem = new ArrayList<>();
                    item item = new item();
                    item.setQuantity(quanity);
                    item.setProduct(product);
                    item.setPrice(product.getPrice());
                    item.setId(1);
                    listitem.add(item);
                    order.setListitem(listitem);
                    order.setId(1);
                    order.setStatus("active");
                    session.setAttribute("order", order);
                    request.setAttribute("trangthai", "success");
                    request.setAttribute("mess", "Thêm Vào Giỏ Hàng Thành Công");
                    request.getRequestDispatcher("introduce?productId="+id).forward(request, response);
                }else{
                    order order = (order) session.getAttribute("order");
                    boolean check = false;
                    List <item> listitem = order.getListitem();
                    for (item item : listitem){
                        if (item.getProduct().getId() == product.getId()){
                            item.setQuantity(item.getQuantity()+quanity);
                            check = true;
                        }
                    }
                if (check == false){
                    item item = new item();
                    item.setId(2);
                    item.setPrice(product.getPrice());
                    item.setQuantity(quanity);
                    item.setProduct(product);
                    listitem.add(item);
                }
                session.setAttribute("order", order);
                session.setAttribute("soluongitem", 1);
                request.setAttribute("trangthai", "success");
                request.setAttribute("mess", "Thêm Vào Giỏ Hàng Thành Công");
                request.getRequestDispatcher("introduce?productId="+id).forward(request, response);
                }
            }
        }
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
