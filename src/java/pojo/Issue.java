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
public class Issue
{
	protected String issueid;
	protected String unid;
	protected String issuedate;
	protected String content;
	protected String visibility;
    
	public Issue()
	{
		issueid = new String();
		unid = new String();
		issuedate = new String();
		content = new String();
		visibility = new String();
	}
	public Issue(String issueid, String unid, String issuedate, String content, String visibility)
	{
		this.issueid = issueid;
		this.unid = unid;
		this.issuedate = issuedate;
		this.content = content;
		this.visibility = visibility;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public String getIssuedate()
	{
		return issuedate;
	}
	public void setIssuedate(String issuedate)
	{
		this.issuedate = issuedate;
	}
	public String getIssueid()
	{
		return issueid;
	}
	public void setIssueid(String issueid)
	{
		this.issueid = issueid;
	}
	public String getUnid()
	{
		return unid;
	}
	public void setUnid(String unid)
	{
		this.unid = unid;
	}
	public String getVisibility()
	{
		return visibility;
	}
	public void setVisibility(String visibility)
	{
		this.visibility = visibility;
	}
	public boolean createIssue()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
		try
		{
			query = "insert into issues values(?,?,?,?,?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,issueid);
			ps.setString(2, unid);
			try
			{
				ps.setDate(3,DbContainor.toSQLDate(issuedate));
			}
			catch (ParseException ex)
			{
				System.out.println("can not convert date : "+ex.getMessage());
			}
			ps.setString(4,content);
			ps.setString(5,visibility);
			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Succesfully inserted into issues table  ");
				ret_val = true;
			}
			else
			{
				System.out.println("Could not insert data into issues table.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in createIssue() of Issue.java : " + sqle.getMessage());
		}
		return ret_val;
	}
    
	public boolean updateIssue()
	{
		boolean ret_val=false;
		String query = null;
		DbContainor.loadDbDriver();
		try
		{
			
			query = "update discussion set unid=?, issuedate=?, content=? visibility=? where issueid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, unid);
			try
			{
				ps.setDate(2,DbContainor.toSQLDate(issuedate));
			}
			catch (ParseException ex)
			{
				System.out.println("can not convert date : "+ex.getMessage());
			}
			ps.setString(3,content);
			ps.setString(4,visibility);
			ps.setString(5, unid);
			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Succesfully updated into issues table  ");
				ret_val = true;
			}
			else
			{
				System.out.println("Could not update data into issues table.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in editIssue() of Issue.java : " + sqle.getMessage());
		}
			return ret_val;
	}
    
	public boolean deleteIssue()
	{
		boolean ret_val=false;
		String query = null;
		DbContainor.loadDbDriver();
		try
		{
			query = "delete from issues where issueid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,issueid);
			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Succesfully deleted into issues table  ");
				ret_val = true;
			}
			else
			{
				System.out.println("Could not delete data into issues table.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in deleteIssues() of Issue.java : " + sqle.getMessage());
		}
		return ret_val;
	}
    
	public  ArrayList<Issue> findAllIssue()
	{
		ArrayList<Issue> issue_list = new ArrayList<Issue>();
		String query = null;
		DbContainor.loadDbDriver();
		try
		{
			query = "delete from issues where issueid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Issue issue = new Issue();
				issue.setIssueid(rs.getString("issueid"));
				issue.setUnid(rs.getString("unid"));
				issue.setIssuedate(rs.getString("issuedate"));
				issue.setContent(rs.getString("content"));
				issue.setVisibility(rs.getString("visibility"));
				issue_list.add(issue);
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in findAllDiscussion() of Discussion.java : " + sqle.getMessage());
		}
		return issue_list;
	}
       
	public Issue findIssue()
	{
		Issue issue = new Issue();
		String query = null;
		DbContainor.loadDbDriver();
		try
		{
			query = "Select * from discussion where issueid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, issueid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				issue.setIssueid(rs.getString("issueid"));
				issue.setUnid(rs.getString("unid"));
				issue.setIssuedate(rs.getString("issuedate"));
				issue.setContent(rs.getString("content"));
				issue.setVisibility(rs.getString("visibility"));
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in findDiscussion() of Discussion.java : " + sqle.getMessage());
		}
		return issue;
	}
}