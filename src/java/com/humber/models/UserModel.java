/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.models;

/**
 *
 * @author Matrix
 */
public class UserModel {
    private int id;
    private String name;
    private String email;
    private int is_pro_member;
    private String isAdmin;


    public UserModel(int id, String name, String email, int is_pro_member, String isAdmin) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.is_pro_member = is_pro_member;
        this.isAdmin = isAdmin;
    }

    public UserModel() {
        
    }
        public UserModel(int id, String name, String email, int is_pro_member) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.is_pro_member = is_pro_member;
        this.isAdmin = isAdmin;
    }


    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIs_pro_member() {
        return is_pro_member;
    }

    public void setIs_pro_member(int is_pro_member) {
        this.is_pro_member = is_pro_member;
    }

    public String getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(String isAdmin) {
        this.isAdmin = isAdmin;
    }
    
   
    
}
