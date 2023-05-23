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
import model.category;

public class categoryDAO {
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<category> selectAll() {
        List<category> list = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new category(rs.getInt(1),
                        rs.getString(2)));
                        }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public category getCategoryById(int id) {
        String query = "SELECT * FROM category \n"
                + "WHERE id = ?";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new category(rs.getInt(1),
                        rs.getString(2));
            }

        } catch (Exception e) {
        }
        return null;
    }

}
