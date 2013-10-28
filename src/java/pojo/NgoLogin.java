/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

import java.sql.*;
/**
 *
 * @author ANOOP
 */
public class NgoLogin
{
	private String ngoid;
	private String pwd;

	public void setPwd(String pwd)
	{
		this.pwd = pwd;
	}
	public void setNgoId(String ngoid)
	{
		this.ngoid = ngoid;
	}
	public String getPwd()
	{
		return pwd;
	}
	public String getNgoId()
	{
		return ngoid;
	}
	
	public boolean isValidNgo()
	{ 
		boolean ret_val=false;
		String query = null;
		System.out.println("in is validNgo  methos of userlogin class.");
		DbContainor.loadDbDriver();
        
		try
		{
			query = "select EMail,Password from ngoinfo where EMail=? and Password=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,ngoid);
			ps.setString(2, pwd);
			ps.execute();
			System.out.println("command is successfully executed");
			if(ps.executeQuery().next())
			{
				ret_val=true;
			}
			con.close();  
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQl Error Occured : "+sqle.getMessage());
		}
		return ret_val;
	}
}