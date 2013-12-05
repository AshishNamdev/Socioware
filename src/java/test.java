
import java.util.ArrayList;
import pojo.Status;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ashish
 */
public class test {
    public static void main(String[] args) {
         Status pb=new Status();
          // String  email="anku.namdev@gmail.com"; 
            String  email="satyam.ajitgupta@gmail.com"; 
              pb.setUnid(email);
               ArrayList<Status> pbls=pb.findAllStatus();
               System.out.println("pbls size is  : "+pbls.size());
               /*if(pbls==null)
                   System.out.println("No Record Found");
               */
               for(int i=0;i<pbls.size();i++)
               {
                   System.out.println(pbls.get(i).getContent());
                    }
}
}