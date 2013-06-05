<%-- 
    Document   : Feedback
    Created on : Feb 14, 2012, 12:37:48 AM
    Author     : vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Socioware/Feedback</title>
    <link href="Index.css" rel="stylesheet" type="text/css">
    <style>
        #tb2{
         border-color:gainsboro;
         border-width: thick;
         border-style:ridge;
         background-color: whitesmoke;
         position: absolute;
         top:35%;
         left:48%;

}
         #TnC
        {
          position: absolute;
          top: 23%;
          left: 14%;
          color:royalblue;
          font-weight: 900;
          text-decoration: blink;
          font-size: xx-large;
          font-family:Jokerman;
        }
        #fb{
            font-size: larger;
            font-weight: bold;
            color: brown;
}
        #tb3{
            position: absolute;
            top:85%;
            left:13%;
}
    #tbl
        {
         border-color:gainsboro;
         border-style:solid;
         background-color: whitesmoke;
         position: absolute;
         top:35%;
         left:13%;

        }
        #txt
        {
         color: darkgray;
        }
        #t1,#t2,#t3,#p1,#p2,#sel,#gen,#habi,#e1{
            color: #6699FF;
}
     </style>
    <script type="text/javascript" src="SignupScript.js">
    </script>

    </head>
    <body>
        <jsp:include page="Header.html"></jsp:include>
    <tr>
         <td>                                                           
             <span id="TnC" ><marquee width="1000">My Feedback</marquee></span></td>

            <td valign="top">
                <table id="tbl" cellspacing="3" height="250" width="450"cellpadding="5" margin="0" >
                 <form>
                     <tr>
                         <th>Name</th><td align="left"><input type="text" value="Enter Your name" title="Name"></td>
                     </tr>
                     <tr>
                         <th>Call Me </th><td align="left"><input type="text" value="Contact Number" title="Call me at"></td>
                     </tr>
                     <tr>
                         <th>Email-Id </th><td align="left"><input type="text" value="Email-Id" title="Mail me at"></td>
                     </tr>
                     <tr>
                         <td colspan="2"><textarea cols="40" rows="4" title="Please give your important feedback">Give your Feedback</textarea></td>
                     </tr>
                     <tr>
                        
                         <td><input type="image" src="images/Feedback.png" title="Click to feedback"></td>
                         <td align="left"><input type="image" src="images/Clear.png" title="Click to clear"></td>
                     </tr>
                    </form>
                </table>
                <table id="tb3">
                    <tr>
                        <td><span id="fb">please put your important feedback in the above<br/> given Feedback form
                            .This will help us to provide<br/> you better service in future.</span></td>
                    </tr>
                    <tr>
                        <td align="center" ><marquee width="150" behavior="alternate" ><img src="images/download (1).jpg"></marquee></td>
                    </tr>
                </table>
                <table id="tb2" cellspacing="0"  width="550" height="530"cellpadding="0" margin="0" >
                    <tr>
                        <td></td>
                    </tr>
                </table>
                </td>
            </tr>
</table>

       
 <table width="1100"  border="0" align="center"  bgcolor="white" >
    <tr>
         <td colspan="100%"><hr/></td>
    </tr>  <tr>
        <td valign="top" align="left">
                    <jsp:include page="Footer.html"></jsp:include>

        </td>

    </tr> <tr>
     <td colspan="100%"><hr/></td>
    </tr>     </table>

    </body>

</html>
