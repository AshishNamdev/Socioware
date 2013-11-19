/*
 * This class is created to convert clob data into String
 * While getting clob data from databse it can not be
 * shown on web page directly it should be converted to readable format into Stirng
 * This calss is created for this purpose only
 */
package pojo;

import java.sql.Clob;
import java.sql.SQLException;

/**
 *
 * @author AshishNamdev
 */
public class ClobToString {
    
    private Clob clob;
    private String message;
    
    public ClobToString()
    {
        this.clob = null;
        this.message = null;
    }

    public Clob getClob() {
        return clob;
    }

    public void setClob(Clob clob)
    {
        this.clob = clob;
    }
    public String getMessage()
    {
        return message;
    }
    public void setMessage(String message)
    {
        this.message = message;
    }
    
    /*
     * This Method convets Clob data set into ClobToString class data members 
     * to message anothe String data member of same class
     * which is then rertun by getter method to use in jsp pages 
     */
    public void convertToString() throws SQLException
    {
        int length = (int)this.clob.length();
        long pos = 1;
        this.setMessage(this.clob.getSubString(pos, length));
    }
}
