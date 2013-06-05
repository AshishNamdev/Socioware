/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;
import java.io.File;
import java.sql.*;
/**
 *
 * @author Ashish
 */
public class NgoLogo {
    private String ngoid;
    private String ngologo;

    public NgoLogo(String ngoid, String ngologo) {
        this.ngoid = ngoid;
        this.ngologo = ngologo;
    }

    public NgoLogo() {
        this.ngoid = new String();
        this.ngologo = new String();
    }

    public String getNgoid() {
        return ngoid;
    }

    public void setNgoid(String ngoid) {
        this.ngoid = ngoid;
    }

    public String getNgologo() {
        return ngologo;
    }

    public void setNgologo(String ngologo) {
        this.ngologo = ngologo;
    }
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public boolean saveLogo(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("update ngoinfo set ngologo=? where EMail=?");
            ps.setString(1, ngologo);
            ps.setString(2, ngoid);
            int res=ps.executeUpdate();
            if(res>0){
                System.out.println("NgoLogo inserted in ngoinfo ");
                flag=true;
            }
            else
                System.out.println("can not insert ngologo.");
             con.close();
        }
        catch(SQLException sqle){
            System.out.println("SQL Error in saveLogo() of NgoLogo : "+sqle.getMessage());
        }
        return flag;
    }

   public NgoLogo getLogo(){
          NgoLogo ngl= new NgoLogo();
          DbContainor.loadDbDriver();
          try{
              con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
              ps=con.prepareCall("select ngologo from ngoinfo where Email=?");
              ps.setString(1, ngoid);
              rs=ps.executeQuery();
              ngl.setNgologo(rs.getString(1));
              con.close();
          }
          catch(SQLException sqle){
               System.out.println("SQL Error in getLogo() of NgoLogo : "+sqle.getMessage());
          }
          return ngl;
        }
     public boolean delLogo(){
         boolean flag=false;
         
         DbContainor.loadDbDriver();
          try{
              con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
              ps=con.prepareStatement("delete ngologo from ngoinfo where EMail=? ");
              ps.setString(1, ngoid);
              int res=ps.executeUpdate();
             if(res>0){
                System.out.println("NgoLogo deleted in ngoinfo ");
                this.delNgoLogoFile();
                flag=true;
            }
            else
                System.out.println("can not delete ngologo.");
             con.close();
          }
          catch(SQLException sqle){
              System.out.println("SQL Error in delLogo() of NgoLogo : "+sqle.getMessage());
          }
         return flag;
     }
     
     public void delNgoLogoFile(){
         String logo=this.getLogo().getNgologo();
         File lgo=new File(logo);
        boolean res = lgo.delete();
        if(res==true){
          System.out.println("NgoLogo succesfully deleted from the server.");
         }
          else
          System.out.println("can not delete NgoLogo from server.");
     }
    
}