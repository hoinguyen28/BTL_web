/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Cart1;
import model.Item;
import model.product;
import model.user;

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
            Connection conn = DBContext.getConnection();
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

    public void delete(int pid) {
        String query = "DELETE FROM `cart` \n"
                + "WHERE product_id = 10;\n"
                + "\n"
                + "DELETE FROM `order`\n"
                + "WHERE product_id = 10; \n"
                + "\n"
                + "DELETE FROM `comment`\n"
                + "WHERE product_id = 10;\n"
                + "\n"
                + "DELETE FROM `sold`\n"
                + "WHERE product_id = 10;\n"
                + "\n"
                + "DELETE FROM `product`\n"
                + "WHERE id = 10;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            ps.setInt(2, pid);
            ps.setInt(3, pid);
            ps.setInt(4, pid);
            ps.setInt(5, pid);
            ps.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public void delete1() {
        String query = "DELETE FROM `cart` \n"
                + "WHERE product_id = 16;\n"
                + "\n"
                + "DELETE FROM `order`\n"
                + "WHERE product_id = 16; \n"
                + "\n"
                + "DELETE FROM `comment`\n"
                + "WHERE product_id = 16;\n"
                + "\n"
                + "DELETE FROM `sold`\n"
                + "WHERE product_id = 16;\n"
                + "\n"
                + "DELETE FROM `product`\n"
                + "WHERE id = 16;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public void update(int id, String name, int catId, String image, String des, int qty, Double price) {
        String query = "UPDATE product\n"
                + "SET NAME = ?, cid = ?, image=?, price = ?, qty = ?, des= ?\n"
                + "WHERE id = ?";
        try {
            Connection conn = DBContext.getConnection();
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
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
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
        } catch (SQLException e) {
        }
        return list;
    }

    public List<product> getbycate(String cid) {

        List<product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n"
                + "where cid = ?";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
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
        } catch (SQLException e) {
        }
        return list;
    }

    public List<product> searchByKey(String key) {

        List<product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n"
                + "WHERE 1=1";
        try {
            Connection conn = DBContext.getConnection();
            if (key != null && !key.equals("")) {
                query += " and name like '%" + key + "%' or des like '%" + key + "%'";
            }
            ps = conn.prepareStatement(query);
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
        } catch (SQLException e) {
        }
        return list;
    }

    public List<product> filterByKey(Double priceFrom, Double priceTo, String color) {

        List<product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n"
                + "WHERE 1=1";
        try {
            Connection conn = DBContext.getConnection();
            if (color != null && !color.equals("")) {
                query += " and des like '%" + color + "%'";
            }
            if (priceFrom != null) {
                query += " and price >= " + priceFrom;
            }
            if (priceTo != null) {
                query += " and price <= " + priceTo;
            }

            ps = conn.prepareStatement(query);
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
        } catch (SQLException e) {
        }
        return list;
    }

    public product getProductById(int id) {
        String query = "SELECT * FROM product \n"
                + "WHERE id = ?";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7));
            }

        } catch (Exception e) {
        }
        return null;
    }
    
    public void addOrder(user c, Cart1 cart) {
        try {
            //Thêm order
            String sql = "insert into web.order(user_id, product_id, amount) values(?, ?, ?)";
             Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,c.getId());
            ps.setInt(2, 0);
            ps.setDouble(3, cart.getTotalMoney());
            ps.executeUpdate();
            //Lấy id của order vừa thêm
//            String sql1 = "SELECT id FROM btl.order ORDER BY id DESC limit 1";
//            st1 = conn.prepareStatement(sql1);
//            ResultSet rs = st1.executeQuery();
//            if(rs.next()) {
//                int oid = rs.getInt("id");
//                for(Item i:cart.getItems()) {
//                    String sql2 = "insert into btl.orderline values(?,?,?,?)";
//                    st2 = conn.prepareStatement(sql2);
//                    st2.setInt(1, oid);
//                    st2.setInt(2, i.getProduct().getId());
//                    st2.setInt(3, i.getQuantity());
//                    st2.setDouble(4, i.getPrice());
//                    st2.executeUpdate();
//                }
//            }   
            String sql3 = "update web.product set qty=qty-? where id=?";
            PreparedStatement st3 = conn.prepareStatement(sql3);
            for(Item i:cart.getItems()){
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getId());
                st3.executeUpdate();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
}
