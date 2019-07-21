/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.sun.xml.ws.tx.at.v10.types.PrepareResponse;
import entity.Category;
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
public class CategoryDB {

    DBContext db;
    Connection con;

    public CategoryDB() {
        try {
            db = new DBContext();
            con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(CategoryDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM dbo.Categories";
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category temp = new Category(rs.getString(1), rs.getString(2), rs.getString(3));
                list.add(temp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public String getNameByCode(String ID){
        try {
            String sql = "SELECT name FROM dbo.Categories WHERE ID = ?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
