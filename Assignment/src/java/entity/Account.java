/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author vank4
 */
public class Account {

    private String username;
    private String password;
    private String displayName;
    private String email;

    private int type;

    public Account() {
    }

    public Account(String username, String password, String displayName, String email, int type) {
        this.username = username;
        this.password = password;
        this.displayName = displayName;
        this.email = email;
        this.type = type;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String toString() {
        return username + "\t" + password + "\t" + displayName + " \t "+ email;
    }
}
