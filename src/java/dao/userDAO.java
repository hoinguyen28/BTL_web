/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import database.JDBC;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.user;

/**
 *
 * @author Admin
 */
public class userDAO {
    
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public user login(String userName, String password) {
        String query = "SELECT * FROM user \n"
                + "WHERE username = ? \n"
                + "AND password = ?;";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new user(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8));
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
}
