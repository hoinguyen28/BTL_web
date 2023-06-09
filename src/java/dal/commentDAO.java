/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.comment;
import model.user;

/**
 *
 * @author Admin
 */
public class commentDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<comment> selectAllByProductId(int productId) {
        List<comment> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "FROM Comment\n"
                + "WHERE product_id = ?\n"
                + "ORDER BY id DESC;";

        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                comment c = new comment(rs.getInt("id"),
                        rs.getInt("user_id"),
                        rs.getInt("product_id"),
                        rs.getString("comment_text"));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
        }

        return null;
    }

    public List<user> getUserByProductId(int productId) {
        List<user> list = new ArrayList<>();
        String query = "SELECT u.*\n"
                + "FROM User u\n"
                + "JOIN Comment c ON u.id = c.user_id\n"
                + "WHERE c.product_id = ?\n"
                + "ORDER BY c.id DESC;";

        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                user u = new user(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                list.add(u);
            }
            return list;
        } catch (Exception e) {
        }

        return null;
    }

    public void AddReview(int userId, int productId, String comment){
        String query = "INSERT INTO `comment` (`user_id`, `product_id`, `comment_text`) VALUES (?, ?, ?);";
        
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setInt(2, productId);
            ps.setString(3, comment);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
