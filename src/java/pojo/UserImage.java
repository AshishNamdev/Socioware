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
public class UserImage 
{
	private String uid;
	private String userImage;

	public UserImage(String uid, String userImage) 
	{
		this.uid = uid;
		this.userImage = userImage;
	}

	public UserImage() 
	{
		this.uid = new String();
		this.userImage = new String();
	}

	public String getUid() 
	{
		return uid;
	}

	public void setUid(String uid) 
	{
		this.uid = uid;
	}

	public String getUserImage() 
	{
		return userImage;
	}

	public void setUserImage(String userImage) 
	{
		this.userImage = userImage;
	}

	public boolean saveImage()
	{
		boolean ret = false;
		String query = null;
		DbContainor.loadDbDriver();
		try
		{
			query = "update userinfo set userimage=? where EMail=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, userImage);
			ps.setString(2, uid);
			
			if(ps.executeUpdate()>0)
			{
				System.out.println("Succefully inserted userimage in userinfo.");
				ret = true;
			}
			else
			{
				System.out.println("Can not update userimage.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in saveImage() of UserImage : "+sqle.getMessage());
		}
       
		return ret;
	}
    
	public  UserImage getImage()
	{
		UserImage uimg = new UserImage();
		String query = null;
		DbContainor.loadDbDriver();
		
		try
		{
			query = "select userimage from userinfo where EMail=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, uid);
			ResultSet rs = ps.executeQuery();
			// uimg.setUserImage(rs.getString(1));  
			
			if(rs.next())
			{
				uimg.setUserImage(rs.getString(1));
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in getImage() of UserImage : "+sqle.getMessage());
		}
		return uimg;
	}
	
	public void delUserImageFile()
	{
		String image = this.getImage().getUserImage();
		String query = null;
		File img = new File(image);
		
		if(img.delete())
		{
			System.out.println("UserImage succesfully deleted from the server.");
		}
		else
		{
			System.out.println("can not delete UserImage from server.");
		}
    }

	public boolean delImage() 
	{
		boolean ret = false;
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "delete userimage from userinfo where EMail=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, uid);
			
			if(ps.executeUpdate()>0)
			{
				System.out.println("User Image succesfully deleted ");
				this.delUserImageFile();
				ret = true;
			}
			else
			{
				System.out.println("can not delete userimage");
			}
		con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection(): Can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error  in delImage() of UserImage : "+sqle.getMessage());
		}
		return ret;
	}
}
