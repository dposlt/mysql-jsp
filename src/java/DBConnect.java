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

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beneplus","root","5?o<dJ2kDBfp");
            st = conn.createStatement();

        }catch(Exception ex) {
            System.out.println("Error: " + ex);
        }
    }
    public String getData() {
        try{
            String query = "select * from phone_number";
            rs = st.executeQuery(query);
            System.out.println("Recored from Databese");
            int numberCount = 0;
            while(rs.next()){
                String id = rs.getString("id");
                String phone = rs.getString("number");
                //System.out.println("Id: "+id+ "   " +"Phone "+phone);
                return ("Id: "+id+ "   " +"Phone "+phone);


                //System.out.println(st.executeQuery("select count("+id+") from phone_number"));
            }
            //



        }catch (Exception ex) {
            //System.out.println(ex);
            //return ex;
        }
        return null;
    }

     public void getCount() {
        try{
            String query = "select COUNT(id) AS count from phone_number ";
            rs = st.executeQuery(query);
            System.out.println("Recored from Databese");

            while(rs.next()){
                int IdCount = rs.getInt("count");
                System.out.println(IdCount);
            }
            //



        }catch (Exception ex) {
            System.out.println(ex);
        }
    }

    
}
