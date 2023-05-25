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
import model.user;

/**
 *
 * @author Admin
 */
public class userDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public user checkUser(String userName) {
        String query = "SELECT * FROM user \n"
                + "WHERE username = ?;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
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

    public void signup(String userName, String email, String name, String phone, String address, String password) {
        String query = "INSERT INTO user (username, password, name, email, phone, isadmin, address) \n"
                + "VALUES (?, ?, ?, ?, ?, 0, ?);";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, address);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public user login(String userName, String password) {
        String query = "SELECT * FROM user \n"
                + "WHERE username = ? \n"
                + "AND password = ?;";
        try {
            Connection conn = DBContext.getConnection();
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

    public void insert(String userName, String email, String name, String phone, String address, String password, int isAdmin) {
        String query = "INSERT INTO user (username, password, name, email, phone, isadmin, address) \n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?);";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setInt(6, isAdmin);
            ps.setString(7, address);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void delete(String uid) {
        String query = "DELETE FROM user \n"
                + "WHERE id = ?";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ps.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public void update(int id, String userName, String email, String name, String phone, String address, String password, int isAdmin) {
        String query = "UPDATE user\n"
                + "SET username = ?, password = ?, name = ?, email = ?, phone = ?, isadmin = ?, address = ?\n"
                + "WHERE id = ?;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setInt(6, isAdmin);
            ps.setString(7, address);
            ps.setInt(8, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<user> selectAll() {
        List<user> list = new ArrayList<>();
        String query = "SELECT * FROM user";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new user(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public user getUserById(int id) {
        String query = "SELECT * FROM user \n"
                + "WHERE id = ?";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
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

        } catch (Exception e) {
        }
        return null;
    }

}
