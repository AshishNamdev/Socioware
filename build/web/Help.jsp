<%-- 
    Document   : Help1
    Created on : Mar 28, 2012, 2:47:57 AM
    Author     : ANOOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Socioware/help1</title>
   <link href="style/Help.css" rel="stylesheet" type="text/css" > 
             
    </head>
<body id="bd">
         <jsp:include page="Header.html"></jsp:include>
        <div id="part1">
              <tr>
                <td valign="top" align="left">

                    <div id="msg1">Socioware is a social networking site spreading awareness about social issues of our society. This page will help
                        you to solve your various issues regarding login access, security and basics features of the site.</div>
 
<div id="msg2">Hey! What are you looking for?</div>
        </div>
   
           
 
     
    <div id="outerdiv">
            <div id="innerdiv1">
                <form >
                    <textarea rows="2" placeholder="What You Need ?" cols="45"></textarea>
                    <input type="button" value="Search">
                </form>
                    
                <span id="sp">
                    <b>Post your Problem:</b><br/>
                </span>
       
                    <b> If you are facing any problem while working on this social Networking site, 
                        then post your problem here
                    </b>
              </div>
        
            <div id="innerdiv2" >
                <a href="SocioBasic.jsp" class="anchors">Socioware Basics</a><br><br>
                <a href="CantLogin.jsp" class="anchors">Can't Login</a><br><br>
                <a href="Security.jsp" class="anchors">Security Centre</a><br><br>
                <a href="EnableChat.jsp" class="anchors">How to Enable Chat between NGO's</a><br><br>
                <a href="RAbuse.jsp" class="anchors">Report Abuse or Policy Violation</a><br><br>
                <a href="SomethingNW.jsp" class="anchors">Something not Working</a><br><br>
                <a href="Other.jsp" class="anchors">Others</a><br><br>
            </div>            
            
         
    </div> 
        <jsp:include page="Footer.html"></jsp:include>
    
</body>
</html>
