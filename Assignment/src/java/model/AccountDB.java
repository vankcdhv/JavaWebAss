/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Account;
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
public class AccountDB {

    DBContext db;
    Connection con;

    public AccountDB() {
        try {
            db = new DBContext();
            con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Account> getAllAccount() {
        ArrayList<Account> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM dbo.Account";
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new Account(rs.getString(1),rs.getString(2) , rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Account getAccount(String username, String password) {
        try {
            String sql = "SELECT * FROM dbo.Account WHERE Username=? AND Password =?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public boolean checkExistedAccount(String username) {
        try {
            String sql = "SELECT COUNT(*) FROM dbo.Account WHERE Username=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                if (rs.getInt(1) > 0) {
                    return true;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public int addAccount(String username, String password, String displayName, String email, int type) {
        if (!checkExistedAccount(username)) {
            try {
                String sql = "INSERT INTO dbo.Account (Username, Password, DisplayName, Email, TYPE) VALUES (?,?,?,?,?)";
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, username);
                st.setString(2, password);
                st.setString(3, displayName);
                st.setString(4, email);
                st.setInt(5, type);
                int x = st.executeUpdate();
                return x;
            } catch (SQLException ex) {
                Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 0;
    }

    public int changePass(String user, String pass, String oldPass) {
        Account acc = getAccount(user, oldPass);
        System.out.println(acc.toString());
        if (acc != null) {
            System.out.println("1");
            try {
                String sql = "UPDATE dbo.Account SET Password = '" + pass + "' WHERE UserName = '" + user + "'";
                PreparedStatement st = con.prepareStatement(sql);
                System.out.println(sql.toString());
                int x = st.executeUpdate();
                System.out.println(x);
                return x;
            } catch (SQLException ex) {
                Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 0;
    }

    public int Update(String user, String name, String email) {
        try {
            String sql = "UPDATE dbo.Account SET DisplayName = N'" + name + "', Email = '" + email + "' WHERE UserName='" + user + "'";
            PreparedStatement st = con.prepareStatement(sql);
            int x = st.executeUpdate();
            return x;
        } catch (SQLException ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
