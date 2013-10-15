/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;
import java.io.*;
import java.sql.*;
import java.text.ParseException;


public class NgoSignup 
{
	private String name;
	private String email;
	private String remail;
	private String pwd;
	private String website;
	private int estd_yr;
	private String contact_no;
	private String add;
	private String city;
	private String cntry;
	private String sq1;
	private String ans1;
	private String sq2;
	private String ans2;
	private String signupdate;
    
    ResultSet rs=null;
	public String getAdd()
	{
		return add;
	}
	public void setAdd(String add)
	{
		this.add = add;
	}
	public String getSignupdate()
	{
		return signupdate;
	}
	public void setSignupdate(String signupdate)
	{
		this.signupdate = signupdate;
	}
	public String getAns1()
	{
        return ans1;
    }
	public void setAns1(String ans1)
	{
		this.ans1 = ans1;
	}
	public String getAns2()
	{
		return ans2;
	}
	public void setAns2(String ans2)
	{
		this.ans2 = ans2;
	}
	public String getCity()
	{
		return city;
	}
	public void setCity(String city)
	{
		this.city = city;
	}
	public String getCntry()
	{
		return cntry;
	}
	public void setCntry(String cntry)
	{
		this.cntry = cntry;
	}
	public String getContact_no()
	{
		return contact_no;
	}
	public void setContact_no(String contact_no)
	{
		this.contact_no = contact_no;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public int getEstd_yr()
	{
		return estd_yr;
	}
	public void setEstd_yr(int estd_yr)
	{
		this.estd_yr = estd_yr;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPwd()
	{
		return pwd;
	}
	public void setPwd(String pwd)
	{
		this.pwd = pwd;
	}
	public String getRemail()
	{
		return remail;
	}
	public void setRemail(String remail)
	{
		this.remail = remail;
	}
	public ResultSet getRs()
	{
		return rs;
	}
	public void setRs(ResultSet rs)
	{
		this.rs = rs;
	}
	public String getSq1()
	{
		return sq1;
	}
	public void setSq1(String sq1)
	{
		this.sq1 = sq1;
	}
	public String getSq2()
	{
		return sq2;
	}
	public void setSq2(String sq2)
	{
		this.sq2 = sq2;
	}
	public String getWebsite()
	{
		return website;
	}
	public void setWebsite(String website)
	{
		this.website = website;
	}
    
	public boolean isRegisteredNgo()
	{
		boolean flag = false;
		DbContainor.loadDbDriver();
		
		try
		{
			con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
			ps=con.prepareStatement("select Name,EMail form ungoinfo where EMail=?");
			ps.setString(1, email);
			rs=ps.executeQuery();
			while(rs.next())
			{
				flag=true;    
			}
			System.out.println("Succefuly completed in isRegisteredNgo() of NgoSignup.java");
			con.close();        
		}
		catch(SQLException sqle)
		{
			System.out.println("Sql Error occured in isRegisteredNgo() of NgoSignup.java");
		}
		return flag;
	}
   
	public boolean setNgoinfo()
	{
		boolean flag = false;
		DbContainor.loadDbDriver();
       
		try
		{
			con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
			ps=con.prepareStatement("insert into ngoinfo( NGONAME, EMAIL, REMAIL, PASSWORD, WEBSITE, ESTDYEAR, SIGNUPDATE, CONTACT, ADDRESS, CITY, COUNTRY, SQUESTION1, ANSWER1, SQUESTION2, ANSWER2)"
                                    + " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2, email);
			ps.setString(3,remail);
			ps.setString(4, pwd);
			ps.setString(5, website);
			ps.setInt(6, estd_yr);
            
			try
			{
				String signupDate = new java.util.Date().toString();
				ps.setDate(7,DbContainor.toSQLDate(signupDate));
			} 
			catch (ParseException ex)
			{
				System.out.println("Unable to convert signupDate in sql date : "+ex.getMessage());
			}
			ps.setString(8,contact_no);
			ps.setString(9,add);
			ps.setString(10,city);
			ps.setString(11,cntry);
			ps.setString(12,sq1);
			ps.setString(13, ans1);
			ps.setString(14,sq2);
			ps.setString(15,ans2);
			int res=ps.executeUpdate();
			if(res>0)
            {
				System.out.println("Data Succesfully inserted into ngoinfo table  ");
				flag = true;
			}
			else
			{
				System.out.println("Could not insert data into ngoinfo table.");
			}
			con.close();
		}
		catch(SQLException sqe)
		{
			System.out.println("Sql error : "+sqe.getMessage());
		}
		return flag;
	}
    
	public NgoSignup getNgoInfo()
	{
		NgoSignup ninf = new NgoSignup();
		DbContainor.loadDbDriver();
        
		try
		{
			con = DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
			ps = con.prepareStatement("select * from Ngoinfo where EMail=?");
			ps.setString(1,email);
			rs = ps.executeQuery();
			if(rs.next())
			{
				ninf.setAdd(rs.getString(10));
				ninf.setCity(rs.getString(11));
				ninf.setCntry(rs.getNString(12));
				ninf.setContact_no(rs.getString(8));
				ninf.setEmail(rs.getString(2));
				ninf.setEstd_yr(rs.getInt(6));
				ninf.setName(rs.getString(1));
				ninf.setPwd(rs.getString(4));
				ninf.setWebsite(rs.getString(5));
				ninf.setSignupdate(rs.getDate(7).toString());
			}
		}     
		catch(SQLException sqe)
		{
			System.out.println("Sql error : "+sqe.getMessage());
		}
		return ninf;
	}
}