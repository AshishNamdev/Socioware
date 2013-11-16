/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pojo;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author AshishNamdev
 */
public class ClobToString
{
    Clob data;
    String string;

    public Clob getData() {
        return data;
    }

    public void setData(Clob data) {
        this.data = data;
    }

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }
    public String ClobToString()
    {
        StringBuilder sdb = null;
        Reader reader = new Reader()
        {

            @Override
            public int read(char[] cbuf, int off, int len) throws IOException {
                throw new UnsupportedOperationException("Not supported yet.");
            }

            @Override
            public void close() throws IOException {
                throw new UnsupportedOperationException("Not supported yet.");
            }
        };
        BufferedReader br = new BufferedReader(reader);
        String line;
        try
        {
                while(null!=(line = br.readLine()))
                {
                    sdb.append(line);
                }
        }
        catch (IOException ex) {
            Logger.getLogger(ClobToString.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sdb.toString();
    }
}

