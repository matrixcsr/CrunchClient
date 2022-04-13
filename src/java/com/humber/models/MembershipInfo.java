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
public class MembershipInfo {
    
    private int id;
    private String name;
    private int charges;
    private String description;

    public MembershipInfo(int id, String name, int charges, String description) {
        this.id = id;
        this.name = name;
        this.charges = charges;
        this.description = description;
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

    public int getCharges() {
        return charges;
    }

    public void setCharges(int charges) {
        this.charges = charges;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
