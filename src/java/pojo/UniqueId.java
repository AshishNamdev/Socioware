/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

import java.rmi.server.UID;

/**
 *
 * @author Ashish
 */
public class UniqueId 
{
    private static UID uid;
    private static String id;
    
    public static String generateId()
    {
        uid=new UID();
        String temp=uid.toString();
        temp=temp.substring(temp.lastIndexOf("-")+1);
        id=temp;
        return id;
    }
  }
