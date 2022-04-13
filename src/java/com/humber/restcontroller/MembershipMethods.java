/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.restcontroller;

import com.humber.database.DBConnection;
import com.humber.models.MembershipInfo;
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
public class MembershipMethods {
    
    
    private Connection connection;
    public MembershipMethods(){
        DBConnection db = new DBConnection();
        connection = db.getConnection();
    }
    
    public List<MembershipInfo> getMembershipInfo() throws SQLException{
        
        List<MembershipInfo> mList = new ArrayList<>();
        String sql = "SELECT * FROM crunch.membership;";
        PreparedStatement preparedStatement =
        connection.prepareStatement(sql);
        ResultSet rs = preparedStatement.executeQuery();
        while(rs.next()){
            mList.add(new MembershipInfo(rs.getInt("id"),rs.getString("name"),rs.getInt("charges"),rs.getString("description")));
         }
        
        return mList;
    }
    
    
}
