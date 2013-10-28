package pojo;
import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;

/**
 *
 * @author Ashish N
 */
public class TopicDiscussion 
{
	protected String discid;
	protected String unid;
	protected String discdate;
	protected int likes;
	protected String comments;
    
	public TopicDiscussion()
	{
		discid = new String();
		unid = new String();
		discdate = new String();
		likes = 0;
		comments = new String();
	}
	public TopicDiscussion(String discid, String unid, String discdate, int likes, String comments)
	{
		this.discid = discid;
		this.unid = unid;
		this.discdate = discdate;
		this.likes = likes;
		this.comments = comments;
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
		boolean ret_val = false;
		String query = null;
		System.out.println("in createTopic");
		DbContainor.loadDbDriver();
        
		try
		{
			query = "insert into topicdiscussion values(?,?,?,?,?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,discid);
			ps.setString(2, unid);
            
			try
			{
				ps.setDate(3,DbContainor.toSQLDate(discdate));
			}
			catch (ParseException ex)
			{
				System.out.println("can not convert date : "+ex.getMessage());
			}
			ps.setInt(4,likes);
			ps.setString(5,comments);

			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Successfully inserted into topicdiscussion table  ");
				ret_val = true;
            }
			else
			{
				System.out.println("Could not insert data into topicdiscussion table.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in createTopicDiscussion() of Discussion.java : " + sqle.getMessage());
		}
		return ret_val;
	}
   
	public boolean editTopicDiscussion()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
		
		try
		{
			query = "update topicdiscussion set discid=?, discdate=?, likes=?, comments=? where unid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, discid);
			try
			{
				ps.setDate(2,DbContainor.toSQLDate(discdate));
			}
			catch (ParseException ex)
			{
				System.out.println("can not convert date : "+ex.getMessage());
			}
			ps.setInt(3,likes);
			ps.setString(4,comments);
			ps.setString(5,unid);

			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Successfully updated into Topicdiscussion table  ");
				ret_val = true;
			}
			else
			{
				System.out.println("Could not update data into TopicDiscussion table.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in editTopicDiscussion() of TopicDiscussion.java : " + sqle.getMessage());
		}
		return ret_val;
	}
     
	public boolean deleteTopicDiscussion()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
		
		try
		{
			query = "delete from topicdiscussion where unid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,unid);

			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Successfully deleted into TopicDiscussion table  ");
				ret_val = true;
			}
			else
			{
				System.out.println("Could not delete data into TopicDiscussion table.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in deleteTopicDiscussion() of TopicDiscussion.java : " + sqle.getMessage());
		}
		return ret_val;
	}
     
	public  ArrayList<TopicDiscussion> findAllTopicDiscussion()
	{
		ArrayList<TopicDiscussion> topic_list = new ArrayList<TopicDiscussion>();
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "Select * from topicdiscussion";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				TopicDiscussion topic_dis = new TopicDiscussion();
				topic_dis.setDiscid(rs.getString("discid"));
				topic_dis.setUnid(rs.getString("unid"));
				topic_dis.setDiscdate(rs.getString("discdate"));
				topic_dis.setLikes(rs.getInt("likes"));
				topic_dis.setComments(rs.getString("comments"));
				topic_list.add(topic_dis);
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in findAllDiscussion() of Discussion.java : " + sqle.getMessage());
		}
		return topic_list;
	}
       
	public TopicDiscussion findTopicDiscussion()
	{
		TopicDiscussion topic_dis = new TopicDiscussion();
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "Select * from topicdiscussion where unid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,unid);
			ResultSet rs = ps.executeQuery();
            
			if(rs.next())
			{
				topic_dis.setDiscid(rs.getString("discid"));
				topic_dis.setUnid(rs.getString("Unid"));
				topic_dis.setDiscdate(rs.getString("discdate"));
				topic_dis.setLikes(rs.getInt("likes"));
				topic_dis.setComments(rs.getString("comments"));
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in findAllTopicDiscussion() of TopicDiscussion.java : " + sqle.getMessage());
		}
		return topic_dis;
	}
}