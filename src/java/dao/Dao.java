/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBcontext;
import entry.Product;
import entry.accounts;
import entry.checkout;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author exnpt
 */
public class Dao {

    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement ps = null;

    public ArrayList<Product> listproduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "select * from product";
            conn = new DBcontext().getconnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setImg(rs.getString("img"));
                product.setPrice(rs.getInt("price"));
                product.setTitle(rs.getString("title"));
                product.setDesciption(rs.getString("description"));
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean signup(accounts acc) {
        try {
            String query = ("INSERT INTO accounts (lastname,firstname,sex,birthday,email,pass)VALUES (?,?,?,?,?,?)");
            conn = new DBcontext().getconnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, acc.getLastname());
            ps.setString(2, acc.getFirstname());
            ps.setInt(3, acc.getSex());
            ps.setDate(4, acc.getBirthday());
            ps.setString(5, acc.getEmail());
            ps.setString(6, acc.getPassword());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean checkemail(String email) {
        try {
            String query = "SELECT * FROM accounts where email = ?";
            conn = new DBcontext().getconnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public accounts getaccounts(String username, String pasword) {
        try {
            accounts acc = new accounts();
            String query = "SELECT * FROM accounts where email = ? and pass = ?";
            conn = new DBcontext().getconnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, pasword);
            rs = ps.executeQuery();
            if (rs.next()) {
                acc.setEmail(username);
                acc.setBirthday(rs.getDate("birthday"));
                acc.setFirstname(rs.getString("firstname"));
                acc.setLastname(rs.getString("lastname"));
                acc.setSex(rs.getInt("sex"));
                acc.setPassword(pasword);
                return acc;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Product getproductbyid(int id) {
        Product product = new Product();
        try {
            String sql = "SELECT * FROM product where id = ?";
            conn = new DBcontext().getconnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setImg(rs.getString("img"));
                product.setPrice(rs.getInt("price"));
                product.setTitle(rs.getString("title"));
                product.setDesciption(rs.getString("description"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }

    public boolean checkout(checkout checkout, String donhang) {
        try {
            String sql = "INSERT INTO checkout (checkoutid,firstname,lastname,username,email,address,phone,zip,productorder,price,time,status) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
            conn = new DBcontext().getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, checkout.getMadonhang());
            ps.setString(2, checkout.getFirstname());
            ps.setString(3, checkout.getLastname());
            ps.setString(4, checkout.getUsername());
            ps.setString(5, checkout.getEmail());
            ps.setString(6, checkout.getAddress());
            ps.setString(7, checkout.getPhone());
            ps.setString(8, checkout.getZip());
            ps.setString(9, donhang);
            ps.setInt(10, checkout.getPrice());
            ps.setDate(11, checkout.getTime());
            ps.setString(12, "Chờ Xác Nhận");
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
