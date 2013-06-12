/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

import java.io.File;
import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;

/**
 *
 * @author Ashish N
 */
public class UploadFile {
    private String upid;
    private String unid;
    private String filepath;
    private String uploaddate;
    private int likes;
    private String report;

    public UploadFile(String upid, String unid, String filepath, String uploaddate, int likes, String report) {
        this.upid = upid;
        this.unid = unid;
        this.filepath = filepath;
        this.uploaddate = uploaddate;
        this.likes = likes;
        this.report = report;
    }

    public UploadFile() {
         this.upid = new String();
        this.unid = new String();
        this.filepath = new String();
        this.uploaddate = new String();
        this.likes = 0;
        this.report = new String();
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public String getReport() {
        return report;
    }

    public void setReport(String report) {
        this.report = report;
    }

    public String getUnid() {
        return unid;
    }

    public void setUnid(String unid) {
        this.unid = unid;
    }

    public String getUpid() {
        return upid;
    }

    public void setUpid(String upid) {
        this.upid = upid;
    }

    public String getUploaddate() {
        return uploaddate;
    }

    public void setUploaddate(String uploaddate) {
        this.uploaddate = uploaddate;
    }
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public boolean saveFile(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("insert into uploads values(?,?,?,?,?,?)");
            ps.setString(1, upid);
            ps.setString(2, unid);
            ps.setString(3, filepath);
            try {
                ps.setDate(4,DbContainor.toSQLDate(uploaddate));
            } catch (ParseException ex) {
                System.out.println("can not convert date : "+ex.getMessage());
            }
            ps.setInt(5, likes);
            ps.setString(6, report);
            int res=ps.executeUpdate();
            if(res>0){
                System.out.println("Data Succefully inserted in uploads table");
                flag=true;
                     }
            else
                System.out.println("can not insert data in uploads table");
            con.close();
             }
        catch(SQLException sqle){
            System.out.println("sql error in saveFile() : "+sqle.getMessage());
        }
        return flag;
    }
   
    public ArrayList<UploadFile> findAllFiles(){
        ArrayList<UploadFile> upld=new ArrayList<UploadFile>();
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            String qry="select * from uploads where unid in(select friendlist.friendid,joins.ngoid from friendlist,joins where friendlist.userid=? and joins.unid=?)";
            ps=con.prepareStatement(qry);
            ps.setString(1,unid);
            ps.setString(2, unid);
            rs = ps.executeQuery();
             
            while(rs.next()){
               UploadFile up=new UploadFile();
                up.setUpid(rs.getString(1));
                up.setUnid(rs.getString(2));
                up.setFilepath(rs.getString(3));
                up.setUploaddate(rs.getDate(4).toString());
                up.setLikes(rs.getInt(5));
                up.setReport(rs.getString(6));
                upld.add(up);
                }
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("SQL Error in findAllFiles() : "+sqle.getMessage());
        }
            return upld;
        }
    public UploadFile findFileById(){
        UploadFile up=new UploadFile();
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("select * from uploads where uploadid=?");
            ps.setString(1, upid);
            rs=ps.executeQuery();
            up.setFilepath(rs.getString(1));
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("SQL Error in findFileById() : "+sqle.getMessage());
        }
        
        return  up;
    }
     public boolean delFile(){
        boolean flag=false;
        
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("delete * from uploads where uploadid=?");
            int res=ps.executeUpdate();
            if(res>0){
                System.out.println("Record deleted from uploads table");
                this.delServerFile();
                flag=true;
            }
            else
                System.out.println("can not delete record form uploads.");
        }
        catch(SQLException sqle){
            System.out.println("sQL eroor in delFile :"+sqle.getMessage());
        }
        return false;
    }
     
     public void delServerFile(){
         String path=this.findFileById().getFilepath();
         File file=new File(path);
        boolean res = file.delete();
        if(res==true){
          System.out.println("File succesfully deleted from the server.");
         }
          else
          System.out.println("can not delete File from server.");
     }
    
     }
