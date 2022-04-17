/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Chaitanya
 */
public class AppUtils {

    public static Date parseDateString(String inputDate) {
        try {
            if(inputDate == null) {
                return null;
            }
            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
            Date date = (Date)formatter.parse(inputDate); 
            return date;
        } catch (Exception e) {
            System.out.print(e.toString());
            return null;
        }

    }
}
