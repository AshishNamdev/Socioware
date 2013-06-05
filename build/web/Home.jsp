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
        <style>
             #bd{                
                margin-top: 5px;
                margin-left: -16px;
                background-color:#202503 ;
             }

        </style>
        <style>
             #spanH{
                 margin-top: 30px;
                 margin-left: 12px;
                 font-weight: bolder;
                 font-size: larger;
                 font-family: Harrington;
                 color:thistle;

     }
     #div1{
         z-index: -1;
         position: absolute;
         margin-left: 20px;
         margin-top:5px;
         border-color: tan;
         left: 20px;
         top: 100px;
         width: 500px;
         height: 480px;
         border: 1px solid turquoise;
         border-radius:10px;
         background-color: #232505;
}
.blink{
    text-decoration: blink;
    color:orangered;
    font-family: Berlin Sans FB;
    margin-left: 80px;
    font-size: x-large;
    
}
#img1{
    margin-left: 80px;
}
#para{
    position: absolute;
    top:310px;
    left: -35px;
    margin-left: 50px;
    text-align: justify;
    color:whitesmoke;
    font-weight: 100;
}
#div1:hover,#div2:hover,#div3:hover{
    background-color: #556B2F;
    border-color: slategray;
    border-style: double;
    border-width: 5px;
}
        </style>
        <style>
            #div2{
                z-index: -1;
                position: absolute;
                top:170px;
                left:580px;
                width: 250px;
                height: 370px;
                background-color: #232505;
                border-color: turquoise;
                border-width: 1px;
                border-style: solid;
                border-radius:10px;

}
#div2_1{
    width:248px;
    height:25px;
    border: 1px solid turquoise;
    border-radius:10px;
    border-collapse: collapse;
    border-bottom-style:solid;
    border-bottom-radius: 2px;
}
#div2_2{
    position: relative;
  width: 150;
  height: 300;
  margin-top: -2px;
margin-left:15px;
}
        </style>
        <style>
            #div3{
                z-index: -1;
                position:absolute;
                width:450px;
                height: 450px;
                margin-left: 880px;
                margin-top: 120px;
                border: 1px solid turquoise;
                border-radius:10px;
                background-color: #232505;
}
#div3_1{
    width: 448px;
    height: 30px;
    border: 1px solid turquoise;
    border-radius:10px;
    border-collapse: collapse;
}
.blink1{
    text-decoration: blink;
    color:orangered;
    font-family: Berlin Sans FB;
    margin-left:5px;
    font-size: x-large;
}
#div3_2{
                width:200px;
                height:400px;
                margin-left: 10px;
                margin-top: 10px;
                border: 1px solid turquoise;
                border-radius:10px;
                background-color: #232505;
}
#div3_3{
                width:200px;
                height:400px;
                margin-left: 230px;
                margin-top: -402px;
                border: 1px solid turquoise;
                border-radius:10px;
                background-color: #232505;
}
.text{
    margin-left: 20px;
    font-size: larger;
    color: white;
}
#font{
    font-size: x-large;
    color:gold;
    font-style: Lucida Calligraphy;
    font-weight: bold;
    margin-left: 10px;
    margin-top: 30px;
}
#link{
    text-decoration: none;
    color: sandybrown;
    font-weight: bold;
}
#link:hover{
    color: steelblue;
   
}
#heading{
    text-decoration: underline;
    color: royalblue;
}
#main{
    position:absolute;
    margin-top: -10px;
    
   }
   #response{
       color: red;
       position: absolute;
       margin-top:80px;
       margin-left: 850px;
       font-style: normal;
       font-weight: bold;
       text-decoration: blink;
   }
        </style>
        
    </head>
    <body id="bd">
        <jsp:include page="Header.html"></jsp:include>
        <div id="main">
            <div id="div1">
               <br/> <span id="spanH">Cause of the day:-</span>
              <br/> <br/><span class="blink" id="spanB">! Global Warming !</span>
              <img id="img1" src="images/globalWarming.jpg">
              <br/><br/><span id="para">
                  <p>People tend to focus on  the here and now.The problem  is that, once  global</p>
                  <p>warming is something that most people can feel in the course of their daily </p>
                  <p>lives,it will be too late  to prevent the larger , potentially catastrophic</p>
                  changes.
              </span>
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
