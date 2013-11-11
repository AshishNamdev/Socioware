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
public class UploadFile
{
	private String upid;
	private String unid;
	private String filepath;
	private String uploaddate;
	private int likes;
	private String report;

	public UploadFile(String upid, String unid, String filepath, String uploaddate, int likes, String report)
	{
		this.upid = upid;
		this.unid = unid;
		this.filepath = filepath;
		this.uploaddate = uploaddate;
		this.likes = likes;
		this.report = report;
	}
	public UploadFile()
	{
		this.upid = new String();
		this.unid = new String();
		this.filepath = new String();
		this.uploaddate = new String();
		this.likes = 0;
		this.report = new String();
	}
	public String getFilepath()
	{
		return filepath;
	}
	public void setFilepath(String filepath)
	{
		this.filepath = filepath;
	}
	public int getLikes()
	{
		return likes;
	}
	public void setLikes(int likes)
	{
		this.likes = likes;
	}
	public String getReport()
	{
		return report;
	}
	public void setReport(String report)
	{
		this.report = report;
	}
	public String getUnid()
	{
		return unid;
	}
	public void setUnid(String unid)
	{
		this.unid = unid;
	}
	public String getUpid()
	{
		return upid;
	}
	public void setUpid(String upid)
	{
		this.upid = upid;
	}
	public String getUploaddate()
	{
		return uploaddate;
	}
	public void setUploaddate(String uploaddate)
	{
		this.uploaddate = uploaddate;
	}

	public boolean saveFile()
	{
		boolean ret_val = false;
		String query = null ;
		DbContainor.loadDbDriver();
		try
		{
			query = "insert into uploads values(?,?,?,?,?,?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, upid);
			ps.setString(2, unid);
			ps.setString(3, filepath);
			try
			{
				ps.setDate(4,DbContainor.toSQLDate(uploaddate));
			}
			catch (ParseException ex)
			{
                System.out.println("can not convert date : "+ex.getMessage());
            }
			ps.setInt(5, likes);
			ps.setString(6, report);

			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Successfully inserted in uploads table");
				ret_val = true;
			}
			else
			{
				System.out.println("can not insert data in uploads table");
			}
            con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in saveFile() : "+sqle.getMessage());
		}
		return ret_val;
	}
   
	public ArrayList<UploadFile> findAllFiles()
	{
		ArrayList<UploadFile> upload_list = new ArrayList<UploadFile>();
		ResultSet rs = null;
		DbContainor.loadDbDriver();
                String query = null;
		
		try
		{
			query = "select * from uploads where unid in(select friendlist.friendid,joins.ngoid from friendlist,joins where friendlist.userid=? and joins.unid=?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,unid);
			ps.setString(2,unid);
			rs = ps.executeQuery();
            
			while(rs.next())
			{
				UploadFile upld = new UploadFile();
				upld.setUpid(rs.getString(1));
				upld.setUnid(rs.getString(2));
				upld.setFilepath(rs.getString(3));
				upld.setUploaddate(rs.getDate(4).toString());
				upld.setLikes(rs.getInt(5));
				upld.setReport(rs.getString(6));
				upload_list.add(upld);
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in findAllFiles() : "+sqle.getMessage());
		}
		return upload_list;
	}
	
	public UploadFile findFileById()
	{
		UploadFile upld = new UploadFile();
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "select * from uploads where uploadid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, upid);
            upld.setFilepath(ps.executeQuery().getString(1));
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in findFileById() : "+sqle.getMessage());
		}
		return  upld;
	}
    
	public boolean delFile()
	{
		boolean ret_val = false;
		String query = null ;
		DbContainor.loadDbDriver();
		try
		{
			query = "delete * from uploads where uploadid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
            
			if(ps.executeUpdate()>0)
			{
				System.out.println("Record deleted from uploads table");
				this.delServerFile();
				ret_val = true;
			}
			else
			{
				System.out.println("can not delete record form uploads.");
			}
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sQL error in delFile :"+sqle.getMessage());
		}
		return false;
	}
     
	public void delServerFile()
	{
		String path = this.findFileById().getFilepath();
		File file = new File(path);
		
        if(file.delete())
		{
			System.out.println("File successfully deleted from the server.");
		}
		else
		{
			System.out.println("can not delete File from server.");
		}
	}
    
}