/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SoutezBene;
/**
 *
 * @author 212437054
 */


public class GetUser {
    
    public String GetUserName() {
        String username = System.getProperty("user.name");
        return username;
    }
}
