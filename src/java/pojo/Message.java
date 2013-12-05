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
public class Message 
{
	private String msgid;
	private String senderid;
	private String receiverid;
	private String msgdate;
	private String message;
	private String status;
	private String subject;
        private User user;

	public Message(String msgid, String senderid, String receiverid, String msgdate, String message, String status)
	{
		this.msgid = msgid;
		this.senderid = senderid;
		this.receiverid = receiverid;
		this.msgdate = msgdate;
		this.message = message;
		this.status = status;
	}
	public Message()
	{
		this.msgid =new String();
		this.senderid =new String();
		this.receiverid =new String();
		this.msgdate = new String();
		this.message = new String();
		this.status = new String();
	}
	
	public void setSubject(String subject)
	{
            this.subject = subject;
	}

	public String getSubject()
	{
		return subject;
	}
        
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getMsgDate()
	{
		return msgdate;
	}
	public void setMsgDate(String msgdate)
	{
		this.msgdate = msgdate;
	}
	public String getMsgid()
	{
		return msgid;
	}
	public void setMsgid(String msgid)
	{
		this.msgid = msgid;
	}
	public String getReceiverid()
	{
		return receiverid;
	}
	public void setReceiverid(String rceiverid)
	{
		this.receiverid = rceiverid;
	}
	public String getSenderid()
	{
		return senderid;
	}
	public void setSenderid(String senderid)
	{
		this.senderid = senderid;
	}
	public String getStatus()
	{
		return status;
	}
	public void setStatus(String status)
	{
		this.status = status;
	}

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
        
        
    
	public boolean sendMessage()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "insert into message values(?,?,?,?,?,?,?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, this.msgid);
			ps.setString(2, this.senderid);
			ps.setString(3,this.receiverid);
            
			try
			{
				ps.setDate(4,DbContainor.toSQLDate(msgdate));
			}
			catch (ParseException ex)
			{
				System.out.println("can not convert date in sendMessage() of Message : "+ex.getMessage());
			}
			ps.setString(5,this.subject);
                        ps.setString(6, this.message);
                        ps.setString(7, this.status);

			if(ps.executeUpdate()>0)
			{
				System.out.println("Data Succefully inserted in message table");
				ret_val = true;
				con.close();
			}
			else
			{
				System.out.println("can not insert data in message table");
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in sendMessage() : "+sqle.getMessage());
		}
		return ret_val;
	}
    
	public Message findMessageById()
	{
		Message msg = new Message();
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "select * from message where msgid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, msgid);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				msg.setMsgid(rs.getString(1));
				msg.setSenderid(rs.getString(2));
				msg.setReceiverid(rs.getString(3));
				msg.setMsgDate(rs.getDate(4).toString());
				msg.setMessage(rs.getString(6));
				msg.setStatus(rs.getString(5));
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in findMessageById() : "+sqle.getMessage());
		}
		return msg;
	}
    
	public ArrayList<Message> findAllMessages()
	{
		ArrayList<Message> msg_list = new ArrayList<Message>();
		String query = null;
                ClobToString clobtostr = new ClobToString();
		DbContainor.loadDbDriver();
		
		try
		{
			//query = "select * from message where receiverid=?";
                        query = "select fname ,mname ,lname ,U.userimage,M.senderid, M.message , M.msgdate  ,M.status,M.msgid from userinfo U JOIN  message M ON U.email=M.senderid where M.senderid in(select senderid from message where receiverid=?)";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1, this.getReceiverid());
			ResultSet rs = ps.executeQuery();
			//String qry = "select fname,mname,lname,email from userinfo where email in (select SENDERID from message where RECEIVERID=?)";
            
			while(rs.next())
			{
				Message msg = new Message();
                                User user = new User();
                                String mname = rs.getString(2);
                                if(mname==null)
                                    mname=" ";
                                user.setFname(rs.getString(1));
                                user.setMname(mname);
                                user.setLname(rs.getString(3));
                                user.setUserImage(rs.getString(4));
                                msg.setUser(user);
				//msg.setMsgid(rs.getString(1));
				msg.setSenderid(rs.getString(5));
				clobtostr.setClob(rs.getClob(6));
                                clobtostr.convertToString();
                                msg.setMessage(clobtostr.getMessage());
                                msg.setMsgDate(rs.getDate(7).toString());
				msg.setStatus(rs.getString(8));
                                msg.setMsgid(rs.getString(9));
                                msg.setReceiverid(this.getReceiverid());
				msg_list.add(msg);
			}
			con.close();
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in findAllMessages() : "+sqle.getMessage());
		}
		return msg_list;
	}
    
	public boolean delMessage()
	{
		boolean ret_val = false;
		String query = null;
		DbContainor.loadDbDriver();
        
		try
		{
			query = "delete * from message where msgid=?";
			Connection con = DbContainor.createConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, msgid);

			if(ps.executeUpdate()>0)
			{
				System.out.println("Record deleted from message table");
				ret_val = true;
			}
			else
			{
				System.out.println("can not delete record form message.");
			}
		}
		catch(NullPointerException npe)
		{
			System.out.println("DbContainor.createConnection():can not create connection to database : "+npe.getMessage());
		}
		catch(SQLException sqle)
		{
			System.out.println("sql error in delMessage() :"+sqle.getMessage());
		}
		return ret_val;
	}
}
