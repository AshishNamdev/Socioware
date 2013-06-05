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
public class Issue {
    protected String issueid;
    protected String unid;
    protected String issuedate;
    protected String content;
    protected String visibility;
    Connection con=null;
    PreparedStatement ps=null;
    
    public Issue(){
        issueid=new String();
        unid=new String();
        issuedate=new String();
        content=new String();
        visibility=new String();
    }
    
    public Issue(String issueid, String unid, String issuedate, String content, String visibility){
        this.issueid=issueid;
        this.unid=unid;
        this.issuedate=issuedate;
        this.content=content;
        this.visibility=visibility;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(String issuedate) {
        this.issuedate = issuedate;
    }

    public String getIssueid() {
        return issueid;
    }

    public void setIssueid(String issueid) {
        this.issueid = issueid;
    }

    public String getUnid() {
        return unid;
    }

    public void setUnid(String unid) {
        this.unid = unid;
    }

    public String getVisibility() {
        return visibility;
    }

    public void setVisibility(String visibility) {
        this.visibility = visibility;
    }
    
     public boolean createIssue(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("insert into issues values(?,?,?,?,?)");
            ps.setString(1,issueid);
            ps.setString(2, unid);
            try {
                ps.setDate(3,DbContainor.toSQLDate(issuedate));
            } catch (ParseException ex) {
                System.out.println("can not convert date : "+ex.getMessage());
            }
            ps.setString(4,content);
            ps.setString(5,visibility);
            
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully inserted into issues table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not insert data into issues table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in createIssue() of Issue.java : " + sqle.getMessage());
        }
        return flag;
    }
    
    public boolean editIssue(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("update discussion set unid=?, issuedate=?, content=? visibility=? where issueid=?");
            ps.setString(1, unid);
            try {
                ps.setDate(2,DbContainor.toSQLDate(issuedate));
            } catch (ParseException ex) {
                System.out.println("can not convert date : "+ex.getMessage());
            }
            ps.setString(3,content);
            ps.setString(4,visibility);
            ps.setString(5, unid);
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully updated into issues table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not update data into issues table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in editIssue() of Issue.java : " + sqle.getMessage());
        }
        return flag;
    }
    
    public boolean deleteIssue(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("delete from issues where issueid=?");
            ps.setString(1,issueid);
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully deleted into issues table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not delete data into issues table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in deleteIssues() of Issue.java : " + sqle.getMessage());
        }
        return flag;
    }
    
    public  ArrayList<Issue> findAllIssue() {
        ArrayList<Issue> al = new ArrayList<Issue>();
         DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("Select * from issues");
          
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Issue is=new Issue();
                is.setIssueid(rs.getString("issueid"));
                is.setUnid(rs.getString("unid"));
                is.setIssuedate(rs.getString("issuedate"));
                is.setContent(rs.getString("content"));
                is.setVisibility(rs.getString("visibility"));
                al.add(is);
            }
           
            con.close();
            
        }
        catch(SQLException sqle){
            System.out.println("sql error in findAllDiscussion() of Discussion.java : " + sqle.getMessage());
        }
         return al;
    }
       public Issue findIssue(){
                   Issue is=new Issue();
                  DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("Select * from discussion where issueid=?");
            ps.setString(1, issueid);
          
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                is.setIssueid(rs.getString("issueid"));
                is.setUnid(rs.getString("unid"));
                is.setIssuedate(rs.getString("issuedate"));
                is.setContent(rs.getString("content"));
                is.setVisibility(rs.getString("visibility"));
            }
           
            con.close();
            
        }
        catch(SQLException sqle){
            System.out.println("sql error in findDiscussion() of Discussion.java : " + sqle.getMessage());
        }
         return is;
    }
    }
