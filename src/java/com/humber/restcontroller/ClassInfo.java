/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.restcontroller;

import com.humber.database.DBConnection;
import com.humber.models.Classes;
import com.humber.models.UserModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Matrix
 */
public class ClassInfo {
     private Connection connection;
    public ClassInfo(){
        DBConnection db = new DBConnection();
        connection = db.getConnection();
    }
    
     public List<Classes> getClassInfo() throws SQLException{
        
        List<Classes> classList = new ArrayList<>();
        String sql = "SELECT * FROM crunch.classes;";
        PreparedStatement preparedStatement =
        connection.prepareStatement(sql);
        ResultSet rs = preparedStatement.executeQuery();
        while(rs.next()){
            classList.add(new Classes(rs.getInt("id"),rs.getString("name")));
         }
        
        return classList;
    }
    
}
