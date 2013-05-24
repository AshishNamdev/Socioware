/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;
import java.sql.*;
/**
 *
 * @author Ashish
 */
public class Feedback {
    private String name;
    private String email;
    private String feedback;
    private String contact;
    PreparedStatement ps=null;
    Connection con=null;
    
    public void setContact(String contact) {
        this.contact = contact;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public void setName(String name) {
        this.name = name;
    }

     public boolean storeFeedback(){
         boolean flag=false;
         DbContainor.loadDbDriver();
         try{
             con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
             ps=con.prepareStatement("insert into feedback values(?,?,?,?)");
             ps.setString(1, name);
             ps.setString(2,email);
             ps.setString(3, feedback);
             ps.setString(4, contact);
             int res=ps.executeUpdate();
             if(res>0){
                 System.out.println("Data succefully inserted into feedback.");
                 flag=true;
                  }
             con.close();
               }
         catch(SQLException sqle){
             System.out.println("SQL Error : "+sqle.getMessage());
         }
         return false;
     }
    
}
