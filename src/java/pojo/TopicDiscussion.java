package pojo;
import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;

/**
 *
 * @author Ajit Gupta
 */
public class TopicDiscussion 
{
    protected String discid;
    protected String unid;
    protected String discdate;
    protected int likes;
    protected String comments;
    Connection con=null;
    PreparedStatement ps=null;
    
    public TopicDiscussion()
    {
        discid=new String();
        unid=new String();
        discdate=new String();
        likes=0;
        comments=new String();
        
        
    }
    public TopicDiscussion(String discid, String unid, String discdate, int likes, String comments)
    {
        this.discid=discid;
        this.unid=unid;
        this.discdate=discdate;
        this.likes=likes;
        this.comments=comments;
        
        
    }

    public String getComments() 
    {
        return comments;
    }

    public void setComments(String comments) 
    {
        this.comments = comments;
    }

    public String getDiscdate() 
    {
        return discdate;
    }

    public void setDiscdate(String discdate) 
    {
        this.discdate = discdate;
    }

    public String getDiscid() 
    {
        return discid;
    }

    public void setDiscid(String discid) 
    {
        this.discid = discid;
    }

    public int getLikes() 
    {
        return likes;
    }

    public void setLikes(int likes) 
    {
        this.likes = likes;
    }

    public String getUnid() 
    {
        return unid;
    }

    public void setUnid(String unid) 
    {
        this.unid = unid;
    }
    
    
     public boolean createTopicDiscussion()
     {
        boolean flag=false;
         System.out.println("in createTopic");
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("insert into topicdiscussion values(?,?,?,?,?)");
            ps.setString(1,discid);
            ps.setString(2, unid);
            try {
                ps.setDate(3,DbContainor.toSQLDate(discdate));
            } catch ( ParseException ex) {
                System.out.println("can not convert date : "+ex.getMessage());
            }
            ps.setInt(4,likes);
            ps.setString(5,comments);
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully inserted into topicdiscussion table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not insert data into topicdiscussion table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in createTopicDiscussion() of Discussion.java : " + sqle.getMessage());
        }
        return flag;
        
    }
   
     public boolean editTopicDiscussion(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("update Topicdiscussion set discid=?, discdate=?, likes=?, comments=? where unid=?");
            ps.setString(1, discid);
            try {
                ps.setDate(2,DbContainor.toSQLDate(discdate));
            } catch (ParseException ex) {
                System.out.println("can not convert date : "+ex.getMessage());
            }
            ps.setInt(3,likes);
            ps.setString(4,comments);
            ps.setString(5,unid);
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully updated into Topicdiscussion table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not update data into TopicDiscussion table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in editTopicDiscussion() of TopicDiscussion.java : " + sqle.getMessage());
        }
        return flag;
    }
     
     public boolean deleteTopicDiscussion(){
        boolean flag=false;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("delete from topicdiscussion where unid=?");
            ps.setString(1,unid);
            int res=ps.executeUpdate();
             if(res>0)
            {
                System.out.println("Data Succesfully deleted into TopicDiscussion table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not delete data into TopicDiscussion table.");
            con.close();
        }
        catch(SQLException sqle){
            System.out.println("sql error in deleteTopicDiscussion() of TopicDiscussion.java : " + sqle.getMessage());
        }
        return flag;
    }
     
     public  ArrayList<TopicDiscussion> findAllTopicDiscussion() {
        ArrayList<TopicDiscussion> al = new ArrayList<TopicDiscussion>();
         DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("Select * from Topicdiscussion");
          
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                TopicDiscussion td=new TopicDiscussion();
                td.setDiscid(rs.getString("discid"));
                td.setUnid(rs.getString("unid"));
                td.setDiscdate(rs.getString("discdate"));
                td.setLikes(rs.getInt("likes"));
                td.setComments(rs.getString("comments"));
                al.add(td);
            }
           
            con.close();
            
        }
        catch(SQLException sqle){
            System.out.println("sql error in findAllDiscussion() of Discussion.java : " + sqle.getMessage());
        }
         return al;
    }
       public TopicDiscussion findTopicDiscussion(){
                   TopicDiscussion td=new TopicDiscussion();
         DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl, DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("Select * from Topicdiscussion where unid=?");
          ps.setString(1,unid);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                td.setDiscid(rs.getString("discid"));
                td.setUnid(rs.getString("Unid"));
                td.setDiscdate(rs.getString("discdate"));
                td.setLikes(rs.getInt("likes"));
                td.setComments(rs.getString("comments"));
            }
           
            con.close();
            
        }
        catch(SQLException sqle){
            System.out.println("sql error in findAllTopicDiscussion() of TopicDiscussion.java : " + sqle.getMessage());
        }
         return td;
    }

                   
              
}     
     
