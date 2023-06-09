/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.order;
import model.product;

/**
 *
 * @author Admin
 */
public class orderDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<order> selectAll(int userId) {
        List<order> list = new ArrayList<>();
        String query = "SELECT * FROM `order` where user_id = ?;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                order o = new order(rs.getInt("id"),
                        rs.getInt("user_id"),
                        rs.getInt("product_id"),
                        rs.getInt("amount"),
                        rs.getString("status"));
                list.add(o);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public List<order> selectByStatus(int userId, String page) {
        List<order> list = new ArrayList<>();
        String query = "SELECT * FROM `order` where user_id = ? and status = ?;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setString(2, page);
            rs = ps.executeQuery();
            while (rs.next()) {
                order o = new order(rs.getInt("id"),
                        rs.getInt("user_id"),
                        rs.getInt("product_id"),
                        rs.getInt("amount"),
                        rs.getString("status"));
                list.add(o);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public List<product> getAllProductByOrder(int userId) {
        List<product> list = new ArrayList<>();
        String query = "SELECT Product.* FROM `Order`\n"
                + "JOIN Product ON `Order`.product_id = Product.id\n"
                + "WHERE `Order`.user_id = ? ;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            return list;
        } catch (SQLException e) {
        }

        return null;
    }

    public List<product> getProductByOrder(int userId, String status) {
        List<product> list = new ArrayList<>();
        String query = "SELECT Product.*\n"
                + "FROM `Order`\n"
                + "JOIN Product ON `Order`.product_id = Product.id\n"
                + "WHERE `Order`.user_id = ? AND `Order`.status = ?\n"
                + "GROUP BY Product.id, `Order`.status;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setString(2, status);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7)));

            }
            return list;
        } catch (SQLException e) {
        }

        return null;
    }
    
//    public static void main(String[] args) {
//        orderDAO o = new orderDAO();
//        List<product> list = o.getAllProductByOrder(2);
//        System.out.println(list.get(0).getName());
//    }
}
