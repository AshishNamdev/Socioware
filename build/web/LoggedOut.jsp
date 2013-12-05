<%-- 
    Document   : Home1
    Created on : Mar 24, 2012, 10:54:24 AM
    Author     : Vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Socioware/Logged out</title>
        <style>
             #bd{                
                margin-top: 5px;
                margin-left: -16px;
                background-color:#202503 ;
             }

        </style>
        <style>
#main{
    position:absolute;
    margin-top: -10px;
    
   }
   #Msg{
       position: absolute;
       font-size: xx-large;
       font-weight: bolder;
       color: thistle;
       background-color: #556B2F;
       top:200px;
       border: 5px turquoise groove;
       border-radius:10px;
       width: 900px;
       height: 200px;
       left: 200px;
   }
        </style>
        
    </head>
    <body id="bd">
        <jsp:include page="Header.html"></jsp:include>
        <div id="main">
            <pre id="Msg"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You are logged out ! Please Log in Again !!!!!!!</pre>
        </div>
        <jsp:include page="Footer.html"></jsp:include>
    </body>
</html>
