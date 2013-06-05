/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;
import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;

/**
 *
 * @author Ajit Gupta 
 */
public class Comment {
    protected String cmntid;
    protected String unid;
    protected String cmnton;
    protected String cmntdate;
    protected String comments;
    protected int likes;
    Connection con=null;
    PreparedStatement ps=null;
    
    public Comment(){
        cmntid=new String();
        unid=new String();
        cmnton=new String();
        cmntdate=new String();
        comments=new String();
        likes=0;
        }
    public Comment(String cmntid, String unid, String cmnton,String cmntdate,String comments, int likes){
        this.cmntid=cmntid;
        this.unid=unid;
        this.cmnton=cmnton;
        this.cmntdate=cmntdate;
        this.comments=comments;
        this.likes=likes;
         }

    public String getCmntdate() {
        return cmntdate;
    }

    public void setCmntdate(String cmntdate) {
        this.cmntdate = cmntdate;
    }

    public String getCmntid() {
        return cmntid;
    }

    public void setCmntid(String cmntid) {
        this.cmntid = cmntid;
    }

    public String getCmnton() {
        return cmnton;
    }

    public void setCmnton(String cmnton) {
        this.cmnton = cmnton;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public PreparedStatement getPs() {
        return ps;
    }

    public void setPs(PreparedStatement ps) {
        this.ps = ps;
    }

    public String getUnid() {
        return unid;
    }

    public void setUnid(String unid) {
        this.unid = unid;
    }
    
        public boolean addComment(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser, DbContainor.dbpwd);
            ps=con.prepareStatement("Insert into comments values(?,?,?,?,?,?)");
            ps.setString(1,cmntid);
            ps.setString(2, unid);
            ps.setString(3, cmnton);
            try{
            ps.setDate(4,DbContainor.toSQLDate(cmntdate));
            }
            catch (ParseException ex) {
              System.out.println("can not convert date : "+ex.getMessage());

            }
            ps.setString(5, comments);
            ps.setInt(6, likes);
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully inserted into comments table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not insert data into comments table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in addComment() of Comment.java : " + sqle.getMessage());
        }
        return flag;
    }
        public boolean deleteComment(){
            boolean flag=false;
            DbContainor.loadDbDriver();
            try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("delete from comments where cmntid=?");
            ps.setString(1,cmntid);
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully deleted into comments table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not delete data into comments table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in deleteComment() of Comment.java : " + sqle.getMessage());
        }
        return flag;

        }
        
        public  ArrayList<Comment> findAllComments() {
        ArrayList<Comment> al = new ArrayList<Comment>();
         DbContainor.loadDbDriver();
        
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("Select * from comments");
          
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Comment cm=new Comment();
                cm.setCmntid(rs.getString("comment"));
                cm.setUnid(rs.getString("unid"));
                cm.setCmnton(rs.getString("cmnton"));
                cm.setCmntdate(rs.getString("cmntdate"));
                cm.setComments(rs.getString("comments"));
                cm.setLikes(rs.getInt("likes"));
                al.add(cm);
            }
           
            con.close();
        }
            catch(SQLException sqle){
            System.out.println("sql error in findAllComment() of Comment.java : " + sqle.getMessage());
        }
         return al;
        }
    
}
