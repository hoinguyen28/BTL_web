/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import database.JDBC;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.product;

/**
 *
 * @author Admin
 */
public class productDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public static productDAO getInstance() {
        return new productDAO();
    }

    public void insert(String name, int catId, String image, String des, int qty, Double price) {
        String query = "INSERT INTO product (name, cid, image, price, qty, des) \n"
                + "VALUES (?, ?, ?, ?, ?, ?);";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, catId);
            ps.setString(3, image);
            ps.setDouble(4, price);
            ps.setInt(5, qty);
            ps.setString(6, des);
            ps.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public void delete(String pid) {
        String query = "DELETE FROM product \n"
                + "WHERE id = ?";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public void update(int id, String name, int catId, String image, String des, int qty, Double price) {
        String query = "UPDATE product\n"
                + "SET NAME = ?, cid = ?, image=?, price = ?, qty = ?, des= ?\n"
                + "WHERE id = ?";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, catId);
            ps.setString(3, image);
            ps.setDouble(4, price);
            ps.setInt(5, qty);
            ps.setString(6, des);
            ps.setInt(7, id);
            ps.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public List<product> selectAll() {
        List<product> list = new ArrayList<>();
        String query = "SELECT * FROM product";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getDouble(7)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<product> getbycate(String cid) {

        List<product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n"
                + "where cid = ?";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getDouble(7)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<product> getBestsl() {

        List<product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n"
                + "where bestSl = 1";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getDouble(7)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public product getProductById(int id) {
        String query = "SELECT * FROM product \n"
                + "WHERE id = ?";
        try {
            Connection conn = JDBC.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getDouble(7));
            }

        } catch (Exception e) {
        }
        return null;
    }

}
