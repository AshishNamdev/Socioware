<%-- 
    Document   : AdminProfile
    Created on : Mar 28, 2012, 11:46:32 PM
    Author     : Vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Socioware/AdminProfile</title>
        <link  rel="stylesheet" type="text/css" href="style/AdminProfile.css" />

        <script type="text/javascript" src="js/jquery.js"></script>
           <script type="text/javascript">
            $(document).ready(function(){
                $("a").hover(
                function(){$(this).css("color","#32CD32"),("text-decoration","underline");},
                function(){$(this).css("color","white");
                });
                $(".l,.li2,.li3").hover(
                function(){$("ul",this).fadeIn("slow");},
                function(){$("ul",this).fadeOut("fast");
                });

                         });
</script>
    </head>
    <body id="bd">
         <div id="dv1">
            <span id="span1">Socioware<sub id="sub1">B social B Realstic</sub></span>
            <input id="ip1" type="text" size="40"><a id="a1" href="#">&nbsp;&nbsp;Find&nbsp;&nbsp;</a>
            <ul>
                
                <li class="l"><a id="a2" href="LogoutServlet">LogOut</a></li>
            </ul>
        </div>

        <div id="main">
        <span id="span2">Welcome Admin</span>
        <div id="OtherAdm">
            <h3>Other Admins</h3>
            <p>Ashish Namdev</p>
            <p>Anoop Tiwari</p>
            <p>Vivek Jain</p>

        </div>
        
        </div>
    <jsp:include page="Footer.html"></jsp:include>

    </body>

</html>
