
import java.util.ArrayList;
import pojo.PublishStatus;

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
         PublishStatus pb=new PublishStatus();
          // String  email="anku.namdev@gmail.com"; 
            String  email="satyam.ajitgupta@gmail.com"; 
              pb.setUnid(email);
               ArrayList<PublishStatus> pbls=pb.findAllStatus();
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