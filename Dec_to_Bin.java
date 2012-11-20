/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package conversion;

import java.util.Scanner;

/**
 *
 * @author ashnamde
 */
public class Dec_to_Bin {
  
     public static String reverseBin(String str){
        char[] bin = str.toCharArray();
        int i,j;
        char bit;
        for(i=0,j=bin.length-1; i<j ;i++,j--)
        {
           bit=bin[i];
           bin[i]=bin[j];
           bin[j]=bit;
          }
        return bin.toString();
    }
    
    
    public static void main(String[] args) {
    long dec,no;
    
    String str=null;
    int rem=0;    
    Scanner in=new Scanner(System.in);
    
      System.out.println("Enter any decimal no ");
      dec=in.nextLong();
      no=dec;
      while(dec>0)
      {
          rem=(int)dec%2;
          str+=String.valueOf(rem);
          dec=dec/2;
         }
        //char[] temp = str.toCharArray();
        int bin[]=new int[str.length()];
        
        for(int i=0;i<bin.length;i++){
         
            
            
        }
        
        
      System.out.println ("The binary of "+no +" is : "+reverseBin(bin));
      
    }
    
   
    
    
}
