/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;
import java.io.File;
import java.sql.*;
/**
 *
 * @author Ashish
 */
public class NgoLogo
{
	private String ngoid;
	private String ngologo;

	public NgoLogo(String ngoid, String ngologo)
	{
		this.ngoid = ngoid;
		this.ngologo = ngologo;
	}
	public NgoLogo()
	{
		this.ngoid = new String();
		this.ngologo = new String();
	}
	public String getNgoid()
	{
		return ngoid;
	}
	public void setNgoid(String ngoid)
	{
		this.ngoid = ngoid;
	}
	public String getNgologo()
	{
		return ngologo;
	}
	public void setNgologo(String ngologo)
	{
		this.ngologo = ngologo;
	}
    
	public boolean saveLogo()
	{
		boolean ret_val=false;
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "update ngoinfo set ngologo=? where EMail=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, ngologo);
			ps.setString(2, ngoid);

			if(ps.executeUpdate()>0)
			{
				System.out.println("NgoLogo inserted in ngoinfo ");
				ret_val = true;
			}
			else
			{
				System.out.println("can not insert ngologo.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in saveLogo() of NgoLogo : "+sqle.getMessage());
		}
		return ret_val;
	}

	public NgoLogo getLogo()
	{
		NgoLogo ngo_logo = new NgoLogo();
		String query = null;
		DbContainor.loadDbDriver();
          
		try
		{
			query = "select ngologo from ngoinfo where Email=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, ngoid);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				ngo_logo.setNgologo(rs.getString(1));
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in getLogo() of NgoLogo : "+sqle.getMessage());
		}
		return ngo_logo;
	}
    
	public boolean delLogo()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
          
		try
		{
			query = "delete ngologo from ngoinfo where EMail=? ";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, ngoid);

			if(ps.executeUpdate()>0)
			{
				System.out.println("NgoLogo deleted in ngoinfo ");
				this.delNgoLogoFile();
				ret_val = true;
            }
			else
			{
				System.out.println("can not delete ngologo.");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("SQL Error in delLogo() of NgoLogo : "+sqle.getMessage());
		}
		return ret_val;
	}
     
	public void delNgoLogoFile()
	{
		String logo = this.getLogo().getNgologo();
		File lgo = new File(logo);
		boolean res = lgo.delete();
		if(res==true)
		{
			System.out.println("NgoLogo succesfully deleted from the server.");
		}
		else
		{
			System.out.println("can not delete NgoLogo from server.");
		}
	}
}