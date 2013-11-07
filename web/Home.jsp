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
        <title>Socioware/Home</title>
        <link href="style/Home.css" rel="stylesheet" type="text/css" >
    </head>
    <body id="bd">
        <jsp:include page="Header.html"></jsp:include>
        <div id="main">
            <div id="div1">
               <br/> <span id="spanH">Cause of the day:-</span>
              <br/> <br/><span class="blink" id="spanB">! Global Warming !</span>
              <img src="images/globalWarming.jpg" alt="Global Warming!"  id="img1" >
              
              <br/><br/>
              <div id="para">
                  <p>
                      People tend to focus on  the here and now.The problem  is that, once  global
                      warming is something that most people can feel in the course of their daily 
                      lives,it will be too late  to prevent the larger , potentially catastrophic
                  </p>
                  changes.
              </div>
              </div>
            <div id="div2">
                <div id="div2_1">
                    <span class="blink">!News Box!</span>
                   </div>
                
                <div id="div2_2" ><jsp:include  page="news_win.htm"></jsp:include></div></div>
                <div id="div3" class="">
                    <div id="div3_1">
                        <span class="blink1">Sign Up !</span>
                    </div>
                    <div id="div3_2" class="text">
                        <span id="font">For User's </span><br/><br/><br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User's  are  invited<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;to join this social
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Networking &nbsp;site<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;which &nbsp;basically
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mean to
                        spread &nbsp;&nbsp;<br/>&nbsp;&nbsp;<span id="heading">SOCIAL AWARENES</span>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;in society<br/><br/><br/><br/><br/>
                        <span><a href="UserSignup.jsp" id="link"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click here</a></span> to sign up
                    </div>
                    <div id="div3_3" class="text">
                        <span id="font">For NGO's </span><br/><br/><br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NGO's  are  invited<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;to join this social
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Networking &nbsp;site<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;which &nbsp;basically
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mean to
                        spread &nbsp;&nbsp;<br/>&nbsp;&nbsp;<span id="heading">SOCIAL AWARENES</span>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;in society<br/><br/><br/><br/><br/>
                        <span><a href="NgoSignup.jsp" id="link"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click here</a></span> to sign up
                    </div>
                </div>
                
        </div>
        <jsp:include page="Footer.html"></jsp:include>
    </body>
</html>
