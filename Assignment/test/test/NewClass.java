package test;


import entity.Account;
import entity.Category;
import entity.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import model.AccountDB;
import model.CategoryDB;
import model.DBContext;
import model.ProductDB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author vank4
 */
public class NewClass {

    public static void main(String[] args) {
        ProductDB pdb = new ProductDB();
        System.out.println(pdb.getProductByID("BTS").getDescribe());
    }
}

//abcxyz