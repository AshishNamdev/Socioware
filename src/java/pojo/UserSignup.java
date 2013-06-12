/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;
import java.io.*;
import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;

import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserSignup {
    private String fname;
    private String mname;
    private String lname;
    private String email;
    private String pwd;
    private String remail;
    private String gender;
    private String dob;
    private String contact_no;
    private String blood_grp;
    private String city;
    private String cntry;
    private String sq1;
    private String ans1;
    private String sq2;
    private String ans2;
    private String name;
    private String signupdate;

    public String getSignupdate() {
        return signupdate;
    }

    public void setSignupdate(String signupdate) {
        this.signupdate = signupdate;
    }
   
   
    Connection con=null;
    PreparedStatement ps=null;
     ResultSet rs=null;

    public String getAns1() {
        return ans1;
    }

    public void setAns1(String ans1) {
        this.ans1 = ans1;
    }

    public String getAns2() {
        return ans2;
    }

    public void setAns2(String ans2) {
        this.ans2 = ans2;
    }

    public String getBlood_grp() {
        return blood_grp;
    }

    public void setBlood_grp(String blood_grp) {
        this.blood_grp = blood_grp;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCntry() {
        return cntry;
    }

    public void setCntry(String cntry) {
        this.cntry = cntry;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public String getContact_no() {
        return contact_no;
    }

    public void setContact_no(String contact_no) {
        this.contact_no = contact_no;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public PreparedStatement getPs() {
        return ps;
    }

    public void setPs(PreparedStatement ps) {
        this.ps = ps;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getRemail() {
        return remail;
    }

    public void setRemail(String remail) {
        this.remail = remail;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public String getSq1() {
        return sq1;
    }

    public void setSq1(String sq1) {
        this.sq1 = sq1;
    }

    public String getSq2() {
        return sq2;
    }

    public void setSq2(String sq2) {
        this.sq2 = sq2;
    }
   
     
     
   public boolean isRegisteredUser(){
       boolean flag=false;
       DbContainor.loadDbDriver();
       try{
          con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
          ps=con.prepareStatement("Select fname,mname,lname from userinfo where EMail=?");
          ps.setString(1, email);
          rs=ps.executeQuery();
          while(rs.next()){
              flag=true;
          }
           System.out.println("Succefully exceuted in isRegisteredUser() in UserSignup.java");
            con.close();
       }
       catch(SQLException sqle){
           System.out.println("Sql srror osccured in isRegisteredUser() in UserSingup.java   : "+sqle.getMessage());
       }
       return flag;
   }
    
    public boolean setUserinfo(){
       boolean flag=false;
        System.out.println("In setUserInfo() of UserSignup.java class");
       DbContainor.loadDbDriver();
       try{
           con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
           String qry="insert into userinfo(FNAME, MNAME, LNAME, EMAIL, REMAIL, PASSWORD, GENDER, DOB, SIGNUPDATE, CONTACT, BLOODGROUP, CITY, COUNTRY, SQUESTION1, ANSWER1, SQUESTION2, ANSWER2)"
                       + " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
           ps=con.prepareStatement(qry);
           ps.setString(1,fname);
           ps.setString(2,mname);
           ps.setString(3,lname);
           ps.setString(4, email);
           ps.setString(5,remail);
           ps.setString(6, pwd);
           ps.setString(7, gender);
            try {
                ps.setDate(8,DbContainor.toSQLDate(dob));
                
                
                String signupDate=DbContainor.getDate();
                ps.setDate(9,DbContainor.toSQLDate(signupDate));
                  } 
            catch (ParseException ex) {
                System.out.println("Unable to convert dob/signupdate in sql date : "+ex.getMessage());
                   }
            ps.setString(10,contact_no);
            ps.setString(11,blood_grp);
            ps.setString(12,city);
            ps.setString(13,cntry);
            ps.setString(14,sq1);
            ps.setString(15, ans1);
            ps.setString(16,sq2);
            ps.setString(17,ans2);
            int res=ps.executeUpdate();
            if(res>0)
            {
                System.out.println("Data Succesfully inserted into userinfo table  ");
                flag=true;
            }
            
            else
                System.out.println("Could not insert data into userinfo table.");
            con.close();
       }
       catch(SQLException sqe){
           System.out.println("Sql error : "+sqe.getMessage());
       }
       System.out.println("process completed In setUserInfo() of UserSignup.java class");
        return flag;
        
    }
    public UserSignup getUserInfo(){
        UserSignup uinf=new UserSignup();
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("select * from userinfo where EMail=?");
            ps.setString(1,this.email);
            rs=ps.executeQuery();
            if(rs.next()){
                String temp=rs.getString(2);
                if(temp==null){
                    temp=" ";
                }
                else{
                    temp=" "+temp+" ";
                }
                uinf.setFname(rs.getString(1));
                uinf.setName(rs.getString(1)+" "+temp+rs.getString(3));
                uinf.setEmail(rs.getString(4));
                uinf.setRemail(rs.getString(5));
                uinf.setPwd(rs.getString(6));
                uinf.setGender(rs.getString(7));
                uinf.setDob(rs.getDate(8).toString());
                uinf.setSignupdate(rs.getDate(9).toString());
                uinf.setContact_no(rs.getString(10));
                uinf.setBlood_grp(rs.getString(11));
                uinf.setCity(rs.getString(12));
                uinf.setCntry(rs.getString(13));
            }
            
        }
        catch(SQLException sqe){
           System.out.println("Sql error : "+sqe.getMessage());
           
       }
        return uinf;
    }
   
    public String loginUser(String email){
         String  userName=null;
        DbContainor.loadDbDriver();
        try{
            con=DriverManager.getConnection(DbContainor.dburl,DbContainor.dbuser,DbContainor.dbpwd);
            ps=con.prepareStatement("select fname from userinfo where EMail=?");
            ps.setString(1,email);
            rs=ps.executeQuery();
            if(rs.next()){
             userName =rs.getString(1);
                  }
               }
            
       catch(SQLException sqe){
           System.out.println("Sql error : "+sqe.getMessage());
              }
        return userName;
    }
}
