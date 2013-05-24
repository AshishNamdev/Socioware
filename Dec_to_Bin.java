/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package conversion;

import java.util.Scanner;

/**
 * @author ashnamde
 Here we are using a string temp_bin to handle binary bits and to reverse them
 as reversing and appending in string is easiest of all*/
public class Dec_to_Bin {
   long num;
   long bin;
   
   public long getBin() {
        return bin;
    }
    public void setBin(long bin) {
        this.bin = bin;
    }
    public long getNum() {
        return num;
    }
    public void setNum(long num) {
        this.num = num;
    }
    /*Method to Convert given number into Binary.*/
    public String convert_To_Bin()
    {
        String str="";
        while(num>0){
        str+=(int)(num%2);
        num=num/2;
            }
        return str;
      }
     /*Here we are storing generated binary bits into a string , so this method reverses that string
     and converts that string to long which is  the data type for bin*/
    public /*static*/void  arrangeBin(String str)
    {  
       String temp_bin="";
       int j=str.length()-1;
       for( ;j>=0;j--) {
            temp_bin+=str.charAt(j);
        } 
       /*Converting and storing binary vstring from temp_bin to long value bin*/
       this.setBin(Long.parseLong(temp_bin));
       }
 }
    
   
    
    
