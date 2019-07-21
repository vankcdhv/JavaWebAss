
import entity.Account;
import entity.Category;
import entity.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import model.AccountDB;
import model.DBCategory;
import model.DBContext;
import model.DBProduct;

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
        DBProduct pdb = new DBProduct();
        ArrayList<Product> list = pdb.getTopProduct();
        String[] imgname = new String[list.size()];
        double[] price = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            imgname[i] = list.get(i).getImage();
            price[i] = list.get(i).getPrice();
        }
        String s = "";
        int k = 7;
        int row;
        if ((imgname.length % k) == 0) {
            row = imgname.length / k;
        } else {
            row = imgname.length / k + 1;
        }
        System.out.println(k + "--" + row);
        for (int i = 0; i < row; i++) {
            System.out.println(i);
            if (i < (row - 1)) {
                for (int j = 0; j < k; j++) {
                    s += "<img src=\"Images/" + imgname[i * k + j]
                            + " \" style=\"width:240px; height:280px\">"
                            + "<p><a href='#' target='_parent'>"
                            + "<img src='Images/buy.jpg'></a>Giá của sản phẩm: " + price[i * k + j] + " VND</p>";
                }
            } else {
                System.out.println(row);
                int x = imgname.length % k;
                if (x==0) x=k;
                for (int j = 0; j < x; j++) {
                    s += "<img src=\"Images/" + imgname[i * k + j]
                            + " \" style=\"width:240px; height:280px\">"
                            + "<p><a href='#' target='_parent'>"
                            + "<img src='Images/buy.jpg'></a>Giá của sản phẩm: " + price[i * k + j] + " VND</p>";
                }
            }
        }
        System.out.println(s);
    }
}
