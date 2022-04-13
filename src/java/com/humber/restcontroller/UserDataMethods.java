/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.restcontroller;

import com.humber.database.DBConnection;
import com.humber.models.UserModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Matrix
 */
public class UserDataMethods {

    private Connection connection;
    public UserDataMethods(){
        DBConnection db = new DBConnection();
        connection = db.getConnection();
    }
    public List<UserModel> getUserInfo(int id) throws SQLException{
        
        List<UserModel> userList = new ArrayList<>();
        String sql = "SELECT * FROM crunch.users where id = ?;";
        PreparedStatement preparedStatement =
        connection.prepareStatement(sql);
        preparedStatement.setInt(1, id);
        ResultSet rs = preparedStatement.executeQuery();
        while(rs.next()){
            userList.add(new UserModel(rs.getInt("id"),rs.getString("name"),rs.getString("email"),rs.getInt("is_pro_member")));
         }
        
        return userList;
    }
    
    public String hello(){
        return "hello";
    }
}
