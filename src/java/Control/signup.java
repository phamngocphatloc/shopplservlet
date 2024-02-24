/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import dao.Dao;
import entry.accounts;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import java.sql.Date;
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
@WebServlet(name = "signup", urlPatterns = {"/signup"})
public class signup extends HttpServlet {

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
        if (session != null){
        Object username = session.getAttribute("username");
        Object password = session.getAttribute("password");
        if (username != null){
            accounts acc = new Dao().getaccounts(username.toString(), password.toString());
            request.setAttribute("username", acc.getLastname());
        }
        }
        request.getRequestDispatcher("signup.jsp").forward(request, response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public boolean checkform (HttpServletRequest rq){
        String err = null;
        if (rq.getParameter("firstname").isEmpty()){
            err = "Bạn Chưa Nhập Tên";
            rq.setAttribute("err", err);
            return false;
        }
        if (new dao.Dao().checkemail(rq.getParameter("email"))==false){
            err = "EMAIL đã tồn tại trên hệ thống";
            rq.setAttribute("err", err);
            return false;
        }
        if (rq.getParameter("lastname").isEmpty()){
            err = "Bạn Chưa Nhập Họ";
            rq.setAttribute("err", err);
            return false;
        }
        if (rq.getParameter("birthday").isEmpty()){
            err = "Bạn Chưa Nhập Ngày Tháng Năm Sinh";
            rq.setAttribute("err", err);
            return false;
        }
        if (rq.getParameter("email").isEmpty()){
            err = "Bạn Chưa Nhập Email";
            rq.setAttribute("err", err);
            return false;
        }
        if (rq.getParameter("password").isEmpty()){
            err = "Bạn Chưa Nhập Password";
            rq.setAttribute("err", err);
            return false;
        }
        return true;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String choosesex = request.getParameter("sex");
        int sex = 9;
        if (choosesex.equals("male")){
            sex = 1;
        }else{
            sex = 0;
        }
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(firstname);
        System.out.println(lastname);

        if (checkform(request)==true){
            accounts acc = new accounts(lastname, firstname, sex, new Date(2004,12,12), email, password);
            if (new dao.Dao().signup(acc)==true){
                String succ = "SIGNUP THÀNH CÔNG VUI LÒNG ĐĂNG NHẬP";
                request.setAttribute("succ", succ);
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }else{
                String succ = "SIGNUP THÀNH CÔNG VUI LÒNG ĐĂNG NHẬP";
                request.setAttribute("succ", succ);
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        }else{
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
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
