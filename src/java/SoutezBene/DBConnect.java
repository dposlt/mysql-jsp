/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SoutezBene;
/**
 *
 * @author robot
 */

import java.sql.*;
public class DBConnect {
    private Connection conn;
    private Statement st;
    private ResultSet rs;

    public DBConnect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
	
            conn = DriverManager.getConnection("jdbc:mysql://10.48.5.99:3306/beneplus","beneplus","+4:TW?bgl!HkQ0wgt#:ZtQip!");
            st = conn.createStatement();

        }catch(Exception ex) {
            System.out.println("Error: " + ex);
        }
    }
    public void getData() {
        try{
            String query = "select * from phone_number";
            rs = st.executeQuery(query);
            System.out.println("Recored from Databese");
            int numberCount = 0;
            while(rs.next()){
                String id = rs.getString("id");
                String phone = rs.getString("number");
                System.out.println("Id: "+id+ "   " +"Phone "+phone);
                

                //System.out.println(st.executeQuery("select count("+id+") from phone_number"));
            }
            //



        }catch (Exception ex) {
            System.out.println(ex);
            //return ex;
        }
        
    }

     public int getCount() {
        try{
            String query = "select COUNT(id) AS count from phone_number ";
            rs = st.executeQuery(query);
            System.out.println("Recored from Databese");

            while(rs.next()){
                int IdCount = rs.getInt("count");
                //System.out.println(IdCount);
                return IdCount;
            }
            //



        }catch (SQLException ex) {
            
            //System.out.println(ex);
            
        }
        return 0;
    }
     
    public int getCountDnes() {
        try{
            String query = "select count(number) AS count from phone_number where created > curdate()";
            rs = st.executeQuery(query);
            System.out.println("Recored from Databese");

            while(rs.next()){
                int IdCount = rs.getInt("count");
                
                return IdCount;
            }
            //



        }catch (SQLException ex) {
            
            //System.out.println(ex);
            
        }
        return 0;
    }
    public int getCountArchive() {
        try{
            String query = "select COUNT(id) AS count from phone_number_archive";
            rs = st.executeQuery(query);
            
            while(rs.next()){
                int IdCount = rs.getInt("count");
                //System.out.println(IdCount);
                return IdCount;
            }
            //



        }catch (SQLException ex) {
            
            //System.out.println(ex);
            
        }
        return 0;
    }

    public String getName() {
        try{
            String query = "select name from access";
            rs = st.executeQuery(query);
            

            while(rs.next()){
                String StrName = rs.getString("name");
                return StrName;
                
            }
            
            
         



        }catch (SQLException ex) {
            
            //
            
        }
        return null;
      
    }
    
     public String getPass() {
        try{
            String query = "select pwd from access";
            rs = st.executeQuery(query);
            

            while(rs.next()){
                String StrPass = rs.getString("pwd");
                return StrPass;
                
            }
            
            
         



        }catch (SQLException ex) {
            
            //
            
        }
        return null;
      
    }
     
    
}