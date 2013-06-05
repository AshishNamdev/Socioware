/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;
import java.io.*;
import java.sql.*;


/**
 *
 * @author Ashish
 */
public class UserImage {
    private String uid;
    private String userImage;

    public UserImage(String uid, String userImage) {
        this.uid = uid;
        this.userImage = userImage;
    }

    public UserImage() {
        this.uid = new String();
        this.userImage = new String();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }
    
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
  
    public boolean saveImage(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("update userinfo set userimage=? where EMail=?");
            ps.setString(1, userImage);
            ps.setString(2, uid);
            int res=ps.executeUpdate();
            if(res>0){
                System.out.println("Succefully inserted userimage in userinfo.");
                flag=true;
                  }
            else
                System.out.println("Can not update userimage.");
            con.close();
            }
        catch(SQLException sqle){
            System.out.println("SQL Error in saveImage() of UserImage : "+sqle.getMessage());
        }
       
        return flag;
    }
    
   
  public  UserImage getImage(){
      UserImage uimg=new UserImage();
      DbContainor.loadDbDriver();
      try{
          con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
          ps=con.prepareStatement("select userimage from userinfo where EMail=?");
          ps.setString(1, uid);
          rs=ps.executeQuery();
         // uimg.setUserImage(rs.getString(1));  
          if(rs.next()){
              uimg.setUserImage(rs.getString(1));
          }
          
          con.close();
      }
      catch(SQLException sqle){
          System.out.println("SQL Error in getImage() of UserImage : "+sqle.getMessage());
      }
      return uimg;
  }
  public void delUserImageFile(){
       String image=getImage().getUserImage();
       File img=new File(image);
       boolean res = img.delete();
        if(res==true){
          System.out.println("UserImage succesfully deleted from the server.");
         }
          else
          System.out.println("can not delete UserImage from server.");
        }
    public boolean delImage() {
        boolean flag=false;
        
        DbContainor.loadDbDriver();
        
        try{
            con=DriverManager.getConnection(DbContainor.dbuser,DbContainor.dbuser, DbContainor.dbpwd);
           
            ps=con.prepareStatement("delete userimage from userinfo where EMail=?");
            ps.setString(1, uid);
            int res=ps.executeUpdate();
            if(res>0){
                System.out.println("User Image succesfully deleted ");
                this.delUserImageFile();
                flag=true;
            }
            else
                System.out.println("can not delete userimage");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("SQL Error  in delImage() of UserImage : "+sqle.getMessage());
        }
        return flag;
    }
}
