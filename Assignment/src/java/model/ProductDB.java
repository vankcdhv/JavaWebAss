/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author vank4
 */
public class ProductDB {

    DBContext db;
    Connection con;

    public ProductDB() {
        try {
            db = new DBContext();
            con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(ProductDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getListProductByCatID(String catID) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM dbo.products WHERE cat_ID = ?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, catID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString(4));
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
                        rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM dbo.Products";
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getDouble(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Product> getTopProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP(7) * FROM dbo.Products ORDER BY quantity DESC";
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getDouble(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Product getProductByID(String id) {
        Product res = null;
        try {
            String sql = "SELECT * FROM dbo.Products WHERE ID = '" + id + "'";
            PreparedStatement st = con.prepareStatement(sql);
            //System.out.println(sql);
            //st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                res = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getDouble(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return res;
    }
    
    public void update(String ID){
        
    }

    public int update(String ID, String name, String catID, double price, int quantity, String status, String des){
        int x=0;
        try {
            String sql = "Update Products SET "
                    + "name = N'"+name+"', "
                    + "cat_ID = '"+catID+"', "
                    + "price = "+price+", "
                    + "quantity = "+quantity+", "
                    + "describe = N'"+des+"', "
                    + "status = N'"+status+"'\n"
                    +"where ID = '"+ID+"'";
            PreparedStatement st = con.prepareStatement(sql);
            x = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }
    
}
