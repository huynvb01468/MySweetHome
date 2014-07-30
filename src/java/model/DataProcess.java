/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.City;
import entity.DataSearch;
import entity.LandLot;
import entity.Post;
import entity.User;
import entity.demand;
import entity.typeUser;
import entity.type_Demand;
import entity.type_LanLot;
import entity.type_Post;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Long
 */
public class DataProcess {
    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String sql = "jdbc:sqlserver://localhost:1433;databaseName=Estate";
            String user = "sa";
            String pass = "123456";
            conn = DriverManager.getConnection(sql, user, pass);
            
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    public ArrayList<LandLot> getvip() {
        ArrayList<LandLot> temp = new ArrayList<LandLot>();
        String sql = "select * from LandLot inner join Post on LandLot.landlot_id = Post.landlot_id where Post.type_post_id = 1";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                LandLot list = new LandLot();
                list.setId(rs.getInt(1));
                list.setTitle(rs.getString(2));
                list.setPrice(rs.getFloat(3));
                list.setSquareFootage(rs.getFloat(4));
                list.setCity_id(rs.getInt(5));
                list.setAddress(rs.getString(6));
                list.setBedroom(rs.getInt(7));
                list.setBathroom(rs.getInt(8));
                list.setImage(rs.getString(9));
                list.setStatus(rs.getString(10)); 
                list.setTypelandlot(rs.getInt(11)); 
                temp.add(list);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return temp;
        
    }
    public ArrayList<LandLot> getnormal() {
        ArrayList<LandLot> temp = new ArrayList<LandLot>();
        String sql = "select top 5 * from LandLot inner join Post on LandLot.landlot_id = Post.landlot_id inner join type_Post on Post.type_post_id = type_Post.type_post_id  where Post.date <= GETDATE() and type_Post.type_value = 'Normal News' order by Post.date desc";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                LandLot list = new LandLot();
                list.setId(rs.getInt(1));
                list.setTitle(rs.getString(2));
                list.setPrice(rs.getFloat(3));
                list.setSquareFootage(rs.getFloat(4));
                list.setCity_id(rs.getInt(5));
                list.setAddress(rs.getString(6));
                list.setBedroom(rs.getInt(7));
                list.setBathroom(rs.getInt(8));
                list.setImage(rs.getString(9));
                list.setStatus(rs.getString(10)); 
                list.setTypelandlot(rs.getInt(11)); 
                temp.add(list);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return temp;
        
    }
    
    public ArrayList<LandLot> getdata() {
        ArrayList<LandLot> temp = new ArrayList<LandLot>();
        String sql = "select * from LandLot";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                LandLot list = new LandLot();
                list.setId(rs.getInt(1));
                list.setTitle(rs.getString(2));
                list.setPrice(rs.getFloat(3));
                list.setSquareFootage(rs.getFloat(4));
                list.setCity_id(rs.getInt(5));
                list.setAddress(rs.getString(6));
                list.setBedroom(rs.getInt(7));
                list.setBathroom(rs.getInt(8));
                list.setImage(rs.getString(9));
                list.setStatus(rs.getString(10)); 
                list.setTypelandlot(rs.getInt(11)); 
                temp.add(list);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return temp;
        
    }
    public ArrayList<City> getCity() {
        ArrayList<City> list = new ArrayList<City>();
        String sql = "select * from City";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                City c = new City();
                c.setCity_id(rs.getInt(1));
                c.setCityName(rs.getString(2));
                list.add(c);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<type_LanLot> getTypeofLadLot() {
        ArrayList<type_LanLot> list = new ArrayList<type_LanLot>();
        String sql = "select * from type_LandLot";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                type_LanLot c = new type_LanLot();
                c.setId(rs.getInt(1));
                c.setType_value(rs.getString(2));
                list.add(c);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<demand> getTypeDemand() {
        ArrayList<demand> list = new ArrayList<demand>();
        String sql = "select * from type_Demand";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                demand c = new demand();
                c.setDemand_id(rs.getInt(1));
                c.setValue(rs.getString(2));
                list.add(c);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public boolean checkLogin(String u , String p)
    {
       boolean f = false;
       String sql = "SELECT * FROM [User] WHERE username=? AND [password] = ?";
        try {
            PreparedStatement prst = getConnection().prepareStatement(sql);
            prst.setString(1, u);
            prst.setString(2, p);
            ResultSet re = prst.executeQuery();
            f=re.next();
            re.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }
    public ArrayList<DataSearch> getDataSearch(String priceFrom, String priceTo, String cityId, String typeLandLotId, String typeDemandId, String bedRoom, String bathRoom, String SquareFootage)
    {
        ArrayList<DataSearch> list = new ArrayList<DataSearch>();
       String sql = "{call sp_Search(?,?,?,?,?,?,?,?)}";
        try {
            PreparedStatement prst = getConnection().prepareStatement(sql);
            prst.setString(1,priceFrom);
            prst.setString(2, priceTo);
            prst.setString(3, cityId);
            prst.setString(4, typeLandLotId);
            prst.setString(5,typeDemandId);
            prst.setString(6, bedRoom);
            prst.setString(7,bathRoom);
            prst.setString(8, SquareFootage);
            ResultSet rs = prst.executeQuery();
            while (rs.next()) {
                String user_id =  rs.getString(1);
                String username = rs.getString(2);
                String password = rs.getString(3);
                String type_user = rs.getString(4);
                String fullname = rs.getString(5);
                String birthday = rs.getString(6);
                String gender = rs.getString(7);
                String email = rs.getString(8);
                String money = rs.getString(9);
                String address_user = rs.getString(10);
                String post_id = rs.getString(11);
                String landlot_id = rs.getString(13);
                String type_post_id = rs.getString(14);
                String type_demand_id = rs.getString(15);
                String timeOut = rs.getString(16);
                String date = rs.getString(17);
                String status_post = rs.getString(18);
                String title = rs.getString(20);
                String price = rs.getString(21);
                String squareFootage = rs.getString(22);
                String city_id = rs.getString(23);
                String address_landlot = rs.getString(24);
                String bedroom = rs.getString(25);
                String bathroom = rs.getString(26);
                String image = rs.getString(27);
                String status_landlot = rs.getString(28);
                String type_landlot_id = rs.getString(29);
                String description_lanlot = rs.getString(30);
                String type_value_landlot = rs.getString(32);
                String cityName = rs.getString(34);
                String type_value_post = rs.getString(36);
                String type_value_demand = rs.getString(38);
                DataSearch dts = new DataSearch(user_id, username, password, type_user, fullname, birthday, gender, email, money, address_user, post_id, landlot_id, type_post_id, type_demand_id, timeOut, date, status_post, title, price, squareFootage, city_id, address_landlot, bedroom, bathroom, image, status_landlot, type_landlot_id, description_lanlot, type_value_landlot, cityName, type_value_post, type_value_demand);
                list.add(dts);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public boolean addUser(String uName, String uPassword,int type, String uFullname, String uBirthday, String uGender, String uEmail,Float uMoney, String uAddress) {
        int result = 0;
        String sql = "INSERT INTO [User] VALUES(?,?,?,?,?,?,?,?,?)";
        Connection cn = getConnection();
        try {
            PreparedStatement prst = cn.prepareStatement(sql);
            prst.setString(1, uName);
            prst.setString(2, uPassword);
            prst.setInt(3, type);
            prst.setString(4, uFullname);
            prst.setString(5, uBirthday);
            prst.setString(6, uGender);
            prst.setString(7, uEmail);
            prst.setFloat(8, uMoney);
            prst.setString(9, uAddress);
            result = prst.executeUpdate();
            prst.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }
    public boolean checkUser(String u) {
        boolean f = false;
        String sql = "SELECT * FROM [User] WHERE username=?";
        try {
            PreparedStatement prst = getConnection().prepareStatement(sql);
            prst.setString(1, u);
            ResultSet re = prst.executeQuery();
            f = re.next();
            re.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }
    public ArrayList<typeUser> gettypeuser(){
        ArrayList<typeUser> temp = new ArrayList<typeUser>();
        String sql = "SELECT * FROM type_User ";
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while(rs.next()){
                int ids = rs.getInt(1);
                String values = rs.getString(2);
                typeUser t = new typeUser(ids, values);
                temp.add(t);
                }
                rs.close();
                getConnection().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return temp;
    }
    public ArrayList<User> getUser(String user)
    {
        ArrayList<User> list = new ArrayList<User>();
        String sql = "select * from [User] where username='"+user+"'";
        
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while(rs.next())
            {
                User u = new User();
                u.setUser_id(rs.getInt(1));
                list.add(u);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<type_Post> getTypePost() {
        ArrayList<type_Post> list = new ArrayList<type_Post>();
        String sql = "select * from type_Post";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                type_Post c = new type_Post();
                c.setId(rs.getInt(1));
                c.setType_value(rs.getString(2));
                list.add(c);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<type_Demand> getTypeHaoDemand() {
        ArrayList<type_Demand> list = new ArrayList<type_Demand>();
        String sql = "select * from type_Demand";
        ResultSet rs;
        try {
            rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                type_Demand c = new type_Demand();
                c.setId(rs.getInt(1));
                c.setType_value(rs.getString(2));
                list.add(c);
            }
            rs.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public boolean addLandLotPost(LandLot l){
        int result = 0;
        CallableStatement cs = null;
        String sql ="{? = call insertLandLotPost(?,?,?,?,?,?,?,?,?,?,?)}";
        try {
            cs = getConnection().prepareCall(sql);
            cs.registerOutParameter(1, java.sql.Types.INTEGER);           
            cs.setString(2, l.getTitle());
            cs.setFloat(3, l.getPrice());
            cs.setFloat(4, l.getSquareFootage());
            cs.setInt(5, l.getCity_id());
            cs.setString(6, l.getAddress());
            cs.setInt(7, l.getBedroom());
            cs.setInt(8, l.getBathroom());
            cs.setString(9, l.getImage());
            cs.setString(10, l.getStatus());
            cs.setString(12, l.getDescription());
            cs.setInt(11, l.getTypelandlot());
            result = cs.executeUpdate();
            l.setId(cs.getInt(1));
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result>0;
    }
    public boolean addPost(Post p, LandLot l){
        int result = 0;
        CallableStatement cs = null;
        String sql ="{call insertPostLand(?,?,?,?,?,?,?)}";
//        String status="Selling";
//        String statusPost="Waiting";
        try {
            cs = getConnection().prepareCall(sql);
            cs.setInt(1, p.getUser_id());
            cs.setInt(2, l.getId());
            cs.setInt(3, p.getType_post());
            cs.setInt(4, p.getType_demand());
            cs.setInt(5, p.getTimeOut());
            cs.setString(6, p.getDate());
            cs.setString(7, p.getStatusPost());
            result = cs.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result>0;
    }
}

