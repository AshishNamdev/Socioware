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
 * @author Ashish
 */
public class Status
{
	private String Name;
	private String unid;
	private String updateDate;
	private String content;
	private String report;
	private int likes;
	private String statusId;
	private User user;

	public String getName()
	{
		return Name;
	}
	public void setName(String Name)
	{
		this.Name = Name;
	}
	public int getLikes()
	{
		return likes;
	}
	public void setLikes(int likes)
	{
		this.likes = likes;
	}
	public String getStatusId()
	{
		return statusId;
	}
	public void setStatusId(String statusId)
	{
		this.statusId = statusId;
	}
	public void setContent(String content)
	{
		this.content =content;
	}
	public String getContent()
	{
		return content;
	}

	public String getReport()
	{
		return report;
	}
	public void setReport(String report)
	{
		this.report = report;
	}

	public String getUpdateDate()
	{
		return updateDate;
	}
	public void setUpdateDate(String updateDate)
	{
		this.updateDate = updateDate;
	}
	public void setUnid(String unid)
	{
		this.unid = unid;
	}
	public String getUnid()
	{
		return unid;
	}
	public User getUser()
	{
		return user;
	}
	public void setUser(User user)
	{
		this.user = user;
	}
        
	public Status()
	{
		this.report = null;
		this.unid = null;
		this.updateDate = null;
		this.likes = 0;
		this.content = null;
		this.statusId = null;
	}
	public Status(String statusid,String unid, String updateDate, String content, String report)
	{
		this.statusId=statusid;
		this.unid = unid;
		this.updateDate = updateDate;
		this.content = content;
		this.report = report;
    }  
	public boolean saveStatus()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "insert into publishstatus values(?,?,?,?,?,?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, unid);
            
			try
			{
                ps.setDate(2, DbContainor.toSQLDate(updateDate));
			}
			catch (ParseException ex)
			{
				System.out.println("can not convert date in saveStatus() of publishStatus.java : "+ex.getMessage());
			}
			ps.setString(3,report);
			ps.setInt(4, likes);
			ps.setString(5, statusId);
			ps.setString(6,content);

            if(ps.executeUpdate()>0)
			{
				System.out.println("status published succefully.");
				ret_val = true;
			}
			else
			{
				System.out.println("can not publish status");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqe)
		{
			System.out.println("Sql error : "+sqe.getMessage());
		}
		return ret_val;
	}
     
	public boolean delStatus()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "delete  from publishstatus where statusId=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, statusId);

			if(ps.executeUpdate()>0)
			{
				System.out.println("suceefully deleted from publishstatus table.");
				ret_val = true;
			}
			else
			{
				System.out.println("can not delete data from publishstatus table");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in delStatus() of Staus.java : "+sqle.getMessage());
		}
		return ret_val;
	}
 
	public   ArrayList<Status> findAllStatus()
	{
		ArrayList<Status> status_list = new ArrayList<Status>();
		String query = null;
		User usr = new User();
		DbContainor.loadDbDriver();
         
		try
		{
			query = "select statusid , U.fname,U.mname,U.lname,U.email, U.userimage,  updatedate ,report , likes,  status from publishstatus P JOIN userinfo U on P.unid=U.email where U.email in(select friendid from friendlist where userid=?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,this.getUnid());
			ResultSet rs = ps.executeQuery();
            
			while(rs.next())
			{
				Status status = new  Status();
				usr.setFname(rs.getString("fname"));
				String mname = rs.getString("mname");
				if(mname==null)
					mname=" ";
				usr.setMname(mname);
				usr.setLname(rs.getString("lname"));
				usr.setUserImage(rs.getString("userimage"));
				usr.setEmail(rs.getString("email"));
				
				status.setUser(usr);
				status.setStatusId(rs.getString("statusid"));
				status.setContent(rs.getString("status"));
				status.setLikes(rs.getInt("likes"));
				status.setUpdateDate(rs.getDate("updatedate").toString());
				status.setReport(rs.getString("report"));
				status_list.add(status);
			}
			/* System.out.println("array list prepared");*/
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL error in findAllStatus() :"+sqle.getMessage());
		}
		return status_list;
	}
}