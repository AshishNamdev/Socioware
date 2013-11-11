/*
* To change this template, choose Tools | Templates
* and open the template in the editor.
*/
package pojo;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
*
* @author Ashish Namdev
*/

public abstract class DbContainor 
{
	public static String dbuser = "socioware";
	public static String dbpwd = "social";
	public static String dburl = "jdbc:oracle:thin:@localhost:1521:XE";
      
	public static void loadDbDriver()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
		}
		catch(ClassNotFoundException cnfe)
		{
			System.out.println("Can not load Driver class : "+cnfe.getMessage());
		}
	}
    
	public static java.sql.Date toSQLDate(String date) throws ParseException
	{
		java.sql.Date sqldate;
		java.util.Date u_date;
		long time;
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		u_date = sdf.parse(date);
		time = u_date.getTime();
		sqldate = new java.sql.Date(time);
		return sqldate;
	}
    
	public static String getDate()
	{
		Calendar cal = Calendar.getInstance();
		int day = cal.get(Calendar.DATE);
		int mon = cal.get(Calendar.MONTH)+1;
		int year = cal.get(Calendar.YEAR);
		String date = day+"-"+mon+"-"+year;
		return date;
	}
    
	public static String revString(String date)
	{
		String dd,mm,yyyy;
		int len = date.length();
		yyyy = date.substring(0,date.indexOf("-"));
		mm = date.substring(date.indexOf("-"), date.indexOf("-"));
		dd = date.substring(date.indexOf("-"), len);
		return dd+mm+yyyy ;
	}
    
	public static String arrangePath(String path)
	{
		String rpath = null;
		rpath = path.substring(0,path.indexOf("build"));
		System.out.println("rpath is : "+rpath);
		rpath+= "web/uploads/";
		return rpath;
	}

	public static Connection createConnection() throws SQLException
	{
		Connection con = null;

                con = DriverManager.getConnection(dburl,dbuser,dbpwd);
		if(con==null)
		{
			throw new NullPointerException();
		}
		return con;
	}
}