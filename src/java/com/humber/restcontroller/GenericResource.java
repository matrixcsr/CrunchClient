/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.restcontroller;

import com.humber.models.Classes;
import com.humber.models.MembershipInfo;
import com.humber.models.UserModel;
import java.sql.SQLException;
import java.util.List;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.enterprise.context.RequestScoped;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Matrix
 */
@Path("generic")
@RequestScoped
public class GenericResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of GenericResource
     */
    public GenericResource() {
    }

    /**
     * Retrieves representation of an instance of com.humber.restcontroller.GenericResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("getuser/{id}")
    public List<UserModel> getJson( @PathParam("id") int id) throws SQLException {
        UserDataMethods ud = new UserDataMethods();
        //TODO return proper representation object
        return ud.getUserInfo(id);
    }
    
    
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("getclasses")
        public List<Classes> getclass() throws SQLException {
        ClassInfo ci = new ClassInfo();
        //TODO return proper representation object
        return ci.getClassInfo();
    }
        
        
        @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("getInfo")
        public List<MembershipInfo> getMembershipInfo() throws SQLException {
        MembershipMethods mm = new MembershipMethods();
        //TODO return proper representation object
        return mm.getMembershipInfo();
    }
    /**
     * PUT method for updating or creating an instance of GenericResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
}
