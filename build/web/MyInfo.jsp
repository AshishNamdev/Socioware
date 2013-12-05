<%-- 
    Document   : MyInfo
    Created on : Apr 4, 2012, 2:03:01 AM
    Author     : Vivek
--%>
<%@ page import="pojo.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Socioware/MyInfo</title>
<style>
            #EvenDiv1:hover,#EvenDiv2:hover{
                color:whitesmoke;
                background-color:black;
}
            #EvenDiv1{
                margin-top: 40px;
                height: 235px;
                border-bottom: 1px salmon solid;
}
            #EvenDiv2{
                margin-top:-19px;
                width: 350px;
                height: 235px;


}
            .scrllImg{
                margin-left: 150px;
}
            .scroller{
                position: absolute;
                width:350px;
                height: 40px;
                background-color:tomato;
}
.scroller1{
                position: absolute;
                top: 510px;
                width:350px;
                height: 40px;
                background-color:tomato;
}
            #EventDisplay{
                position: absolute;
                top:70px;
                left:930px;
                width:350px;
                height: 550px;
                background-color:whitesmoke;
                display:none;
                opacity:0.9;
                border: 1px wheat solid;
}
            #close:hover{
                cursor: pointer;
           }
            #EventTab{
                z-index: +1;
                position: absolute;
                left: 1350px;
                top:130px;
                border: 5px #1E90FF groove;
                border-radius: 10px;
                opacity:0.9;
                display: block;
              background-color: black;
                color: white;

}
#disableHeader{
    position: fixed;
    background-color: silver;
    opacity:.2;
    width: 1347px;
    height: 43px;
    z-index: +1;
    display: none;
}
#disableFooter{
    display: none;
    position: fixed;
    top: 625px;
    background-color: silver;
    opacity:.2;
    width: 1347px;
    height: 38px;
    z-index: +1;
}

#disable{
    position: absolute;
    background-color: silver;
    display: none;
    opacity:.2;
    width:1347px;
    height: 700px;
    z-index: 0;
    border: 1px thistle solid;
}
#eventTxt{
    margin-left: 20px;
    color: brown;
    font:  bolder x-large cursive ;
    font-family: Curlz MT;

}
.Close{
    margin-left: 120px;
    vertical-align: top;
}
.Close:hover{
    color:white;
    cursor: pointer;
}
        </style>
        <style>
#span2{
    position: relative;
    left:5px;
    top: 55px;
    font-family: Snap ITC;
    color: orangered;
}
            #bd{
                margin: 0;
                background-color:#202503 ;


}
            #dv1{
                position: fixed;
                z-index: +1;
                background-color:#192201;
                height: 50px;
                width: 1366px;
                border-bottom-style: ridge;
                border-bottom-width: thin;
                border-bottom-color: royalblue;
                margin-top: -8px;
}
            #span1{
                margin-top: 0;
                margin-left: 5px;
                font-family:Forte;
                color: #6699FF;
                font-size: xx-large;
                font-weight: 900;

            }
            #sub1{
                margin-top: 2px;
                margin-left: 5px;
                font-size: small;
                font-family: Tempus Sans ITC;
                color: tomato;
}
#a1{
    text-decoration: none;
    color: whitesmoke;

    border-radius:2px;
    background-color:lightslategray;
    margin-left: 10px;
    text-align: center;
}
#a1:hover{
    color:green;

    background-color: transparent;
}
#ip1{
    margin-left: 170px;
}
ul{
    list-style: none;
    margin-top: -20px;
    margin-left: 850px;
}
ul li a{
    position:relative;

    display: block;
    padding: 3px;
    text-decoration: none;
    background-color: #696969;
    color: whitesmoke;
    border:2px #1E90FF ridge;
    text-align: center;
    font-family: Comic Sans MS;
    font-size: small;
    border-radius:5px;
}
.l{
    display:table-cell;
    width: 120px;
}


li ul{
    position: absolute;
    display: none;
    width:120px;
    margin-left:-40px;
    margin-top: 0px;

}
        </style>
        <style>
            #ShowImage{
                position: absolute;
                top: 50px;
                display: none;
                left: 80px;
                height: 550px;
                width: 1200px;
                background-color: black;
                opacity:1;
                border: 2px white solid;

            }
            #ImageBox{
                position: absolute;
                top: 30px;
                left: 220px;
                height: 500px;
                width:  800px;
                border: 1px red solid;
                background-color: whitesmoke;
             }
             #ImageClose{
                 position: absolute;
                 left: 1184px;
             }
             #ImageClose:hover{
                 cursor: pointer;
             }
             #ShowVideo{
                position: absolute;
                top: 50px;
                display: none;
                left: 80px;
                height: 550px;
                width: 1200px;
                background-color: black;
                opacity:.9;
                border: 2px white solid;

            }
            #VideoBox{
                position: absolute;
                top: 30px;
                left: 220px;
                height: 500px;
                width:  800px;
                border: 1px red solid;
                background-color: whitesmoke;
             }
             #VideoClose{
                 position: absolute;
                 left: 1184px;
             }
             #VideoClose:hover{
                 cursor: pointer;
             }
             .Text{
                 position:absolute;
                 left: 530px;
                 color: orangered;
                 font-size: x-large;
                 font-family:Blackadder ITC;
                 font-weight:bold;
             }
        </style>
        <style>

        </style>

        <style>
            #MyDetail{
                position: fixed;
                top: 50px;
                left: 450px;
                color: skyblue;
                font-size: xx-large;
                font-family: Broadway;
                font-weight: bold;
                 
}
        </style>
        <style>
#main{
    margin-left: 45px;
    position: absolute;
    z-index: -1;
    height: 700px;
   
}
#dv2{
    margin-left: 10px;
    margin-top: 70px;
    height: 150px;
    width: 150px;
    background-color: silver;
    border: 1px turquoise solid;
}
#dv3{
    margin-left: 10px;
    
    margin-top: 10px;
    color: skyblue;
    font-family: Baskerville Old Face;
    font-size: x-large;
}
#dv4{
    position: absolute;
    top: 70px;
    left: 260px;
    height: 500px;
    width: 1px;
    background-color: #556B2F;
    
}
#dv6{
    position: fixed;;
    top: 140px;
    left: 120px;
    color: royalblue;
    font-size: large;
    font-weight: bolder;


}
#Right{
    position: fixed;
}
#dv7{
    position: absolute;
    top: 70px;
    left: 820px;
    height: 500px;
    width: 1px;
    background-color: #556B2F;
}
        </style>
        <style>
            #Left{
                position: fixed;
}

            .InfoMine{
                margin-left: 20px;
                color: navajowhite;
                width: 50px;
                height: 30px;
                background-color: #556B2F;
                border-radius:5px;
}
        </style>
        <style>

            #close:hover{
                cursor: pointer;
           }
            #EventTab{
                position: absolute;
                left: 1380px;
                top:150px;
                border: 5px #1E90FF groove;
                border-radius: 10px;
                opacity:0.8;
                display: block;
              background-color: #696969;
                color: white;

}
        </style>
        <style>
            #IssueInner:hover{
                background-color: black;
                color: white;

            }
            #IssueDisplay{
                position: absolute;
                opacity:0.9;
                display: none;
                left: 930px;
                top: 150px;
                width: 350px;
                height: 400px;
                background-color: whitesmoke;
                border: 1px thistle solid;
            }
            #IssueInner{
                position: absolute;
                top:41px;
                width: 350px;
                height: 318px;
            }
            #IssueFooter{
                position: absolute;
                top:360px;
                width: 350px;
                height: 40px;
                background-color: tomato;
     }
           #IssueHeader{
                position: absolute;
                width: 350px;
                height: 40px;
                background-color: tomato;
     }
            #IssueTab{
                position: absolute;
                left:-500px;
                top:130px;
                border: 5px #1E90FF groove;
                border-radius: 10px;
                opacity:0.9;
                display: block;
                background-color: #696969;
                color: white;

}
#issueTxt{
    margin-left: 20px;
    color: brown;
    font:  bolder x-large cursive ;
    font-family: Curlz MT;

}
        </style>
        <style>
            #MyFriend{
                position: absolute;
                top: 100px;
                opacity:0.9;
                display: none;
                left: 850px;
                width: 200px;
                height: 500px;
                background-color: black;
                border:  1px turquoise solid;
                border-radius: 5px;
}
#Friend{
    position: absolute;
    color: royalblue;
    left: 10px;
    top: -15px;
    font-size: larger;
    font-weight: bold;
    }
    #FriendHeader{
    position: absolute;
    width: 198px;
    height: 20px;
    border-radius:3px;
    border: 1px turquoise solid;
    border-collapse: collapse;
    background-color: burlywood;
}
#FriendList{
    position: absolute;
    top:20px;
    height: 478px;
    width: 198px;
    border: 1px turquoise solid;
    border-radius:3px;
    overflow: auto;
    border-collapse: collapse;
}
.Friend1{
    position: relative;
    height: 119px;
    width: 198px;
    border-bottom: 1px thistle solid;
}
#FriendClose{
    position: absolute;
    left: 182px;
}
        </style>
                <style>
            #MyNgo{
                position: absolute;
                top: 100px;
                opacity:0.9;
                display: none;
                left: 850px;
                width: 200px;
                height: 500px;
                background-color: black;
                border:  1px turquoise solid;
                border-radius: 5px;
}
#Ngo{
    position: absolute;
    color: royalblue;
    left: 10px;
    top: -15px;
    font-size: larger;
    font-weight: bold;
    }
    #NgoHeader{
    position: absolute;
    width: 198px;
    height: 20px;
    border-radius:3px;
    border: 1px turquoise solid;
    border-collapse: collapse;
    background-color: burlywood;
}
#NgoList{
    position: absolute;
    top:20px;
    height: 478px;
    width: 198px;
    border: 1px turquoise solid;
    border-radius:3px;
    overflow: auto;
    border-collapse: collapse;
}
.Ngo1{
    position: relative;
    height: 119px;
    width: 198px;
    border-bottom: 1px thistle solid;
}
#NgoClose{
    position: absolute;
    left: 182px;
}
.spn{
    color:white;
    font-family: Batang;
    font-size: medium;
    
    
}
        </style>
       
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
        <script>
            $(document).ready(function(){
                $("#ShowFriend").click(
                function(){$("#MyFriend").css("display","block");
                    });
                $("#FriendClose").click(
                function(){$("#MyFriend").css("display","none");
                });
            });
        </script>
<script>
            $(document).ready(function(){
                $("#ShowNgo").click(
                function(){$("#MyNgo").css("display","block");
                    });
                $("#NgoClose").click(
                function(){$("#MyNgo").css("display","none");
                });
            });
        </script>

        <script>
            $(document).ready(function(){
                $("#ShowEve").click(
                function(){$("#EventDisplay").fadeIn("slow");
                });

                $("#ShowIssue").click(
                  function(){$("#IssueDisplay").fadeIn("slow");});

               $(".Close").click(
               function(){$("#EventDisplay,#IssueDisplay").fadeOut("fast");

               });
         });
        </script>
         <script>
            $(document).ready(function(){
                $("#Image").click(
                function(){$("#ShowImage").animate({opacity: "show" , top:"+50px"},"slow");

                });
                $("#ImageClose").click(
                    function(){$("#ShowImage").animate({opacity: "hide" , top:"-100px"},"slow");

                    });
                $("#Video").click(
                function(){$("#ShowVideo").animate({opacity: "show" , top:"+50px"},"slow");
                });
                $("#VideoClose").click(
                    function(){$("#ShowVideo").animate({opacity: "hide" , top:"-100px"},"slow");

                    });
            });

        </script>
        <script>
            $(document).ready(function(){
                $("#CreateEve").click(
                function(){$("#EventTab").animate({left:"-=920"},"fast")
                                         .animate({left:"+=100"},"fast")
                                         .animate({left:"-=100"},"fast")
                                         .animate({left:"+=50"},"fast")
                                         .animate({left:"-=50"},"fast");
               });
               $("#close").click(
                function(){$("#EventTab").animate({left:"+=950"},"slow");

               });
                         });
        </script>
        <script>
            $(document).ready(function(){
                $("#CreateIssue").click(
                function(){$("#IssueTab").animate({left:"+=900"},"fast")
                                         .animate({left:"-=100"},"fast")
                                         .animate({left:"+=100"},"fast")
                                         .animate({left:"-=50"},"fast")
                                         .animate({left:"+=50"},"fast");

               });

               $("#Iclose").click(
                function(){$("#IssueTab").animate({left:"-=900"},"slow");

               });
                   </script>
    </head>
    <body id="bd">
        <%
             session=request.getSession(false);
             RequestDispatcher rd=null;
            if(session!=null)
                           {
                String email=session.getAttribute("id").toString();
                String id=request.getParameter("qid");
                UserSignup us=new UserSignup();
                us.setEmail(id);
                //us.setEmail("ashish.namdev01@hotmail.com");
                UserSignup obj=us.getUserInfo();
                if(obj==null){
                    System.out.println("No record found");
                }
                
        %>
         <div id="dv1">
            <span id="span1">Socioware<sub id="sub1">B social B Realstic</sub></span>
            <input id="ip1" type="text" size="40"><a id="a1" href="#">&nbsp;&nbsp;Find&nbsp;&nbsp;</a>
             <ul>
               <li class="l"><a class="a2" id="CreateIssue" href="#">Create Issue</a>
               <form action="CreateIssueServlet" method="post">  
                   <div id="IssueTab">
                            <span id="issueTxt">Put your Problem...................</span>
                        <img id="Iclose" align="right" src="images/btn-delete.gif">
                        <table id="ITable" cellpadding="3">
                    
	<th><p>StartDate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input name="issuedate" type="text" title="Enter date" ></td>
	</tr>
        <tr> 
            <th><p>Issue Content</p></th>
            <th><textarea name="content" rows="3" cols="40"></textarea></th>
	</tr>
	<tr>
            <th></th><td align="right"><input id="Create" type="submit" title="Create your event" value="create" ></td>
	</tr>
    </table>
</div></form>
               </li>
                <li class="l"><a class="a2" id="CreateEve" href="#">Create events</a>
                     <form action="CreateEventServlet" method="post">  <div id="EventTab">
                            <span id="eventTxt">Create your event...................</span>
                        <img id="close" align="right" src="images/btn-delete.gif">
                        <table id="Table" cellpadding="3">
                        <tr>
                            <th><p>EventName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input name="eventname" type="text" title="Give your event name" ></td>
	</tr>
	<tr>
	<th><p>Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" name="subject" title="Write your event subject" ></td>
	</tr>
	<tr>
	<th><p>StartDate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" name="eventdate" title="Enter date" ></td>
	</tr>
	<tr>
	<th><p>ExpireDate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input name="expdate" type="text" title="Expire Date" ></td>
	</tr>
	<tr>
            <th></th>  <th><textarea name="eventdesc" rows="3" cols="40"></textarea></th>
	</tr>
	<tr>
            <th></th><td align="right"><input id="Create" type="submit" title="Create your event" value="create" ></td>
	</tr>
    </table>
</div></form>
                </li>
                <li class="l"><a  class="a2" href="DiscussionTopic.jsp">Discussion</a>
             </li>
             <li class="l"><a class="a2"><%=us.loginUser(email)%></a>
                <ul>
                    <li><a class="a2" href="MyInfo.jsp?qid=<%=email%>">Home</a></li>
                    <li><a class="a2" href="UserProfile.jsp">Profile</a></li>
                    <li><a class="a2" href="#">Find Friend/Ngos</a></li>
                    <%--      <li><a class="a2" href="#">Setting</a></li>--%>

                </ul></li>
                <li class="l"><a class="a2" href="LogoutServlet">LogOut</a></li>
            </ul>
        </div>
                        
        <div id="main">
            <div id="Left">
                <%
                  UserImage img=new UserImage();
                       img.setUid(id);
                       UserImage uimg=img.getImage();
                       String image=uimg.getUserImage();
                       %>
                <div id="dv2">
                    <img width="150" height="150" src="uploads/<%=image%>"/>
                </div>
            <div id="dv3">
                <%=obj.getName()%><br/><br/>
            </div>
            <div id="MineInfo">
                 <a class="InfoMine" id="Image">&nbsp;My Photos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><br/><br/>
                <a class="InfoMine" id="Video">&nbsp;My Videos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><br/><br/>
                <a class="InfoMine" id="ShowEve">&nbsp;My Events&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><br/><br/>
                <a class="InfoMine" id="ShowIssue">&nbsp;My Issues&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><br/><br/>
                <a class="InfoMine" id="ShowFriend">&nbsp;My Friends&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><br/><br/>
                <a class="InfoMine" id="ShowNgo">&nbsp;My NGOs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

            </div>
            <div id="dv4"></div>
            
            </div>
            <div id="centre">
                <span id="MyDetail"> <pre> My Details</pre></span>
                <div id="dv6">
                    <pre>
                        Email-Id        <span class="spn"><%=obj.getEmail()%></span>  

                        User Name       <span class="spn"><%=obj.getName()%></span>
  

                        Country         <span class="spn"><%=obj.getCntry()%>  </span>

                        City            <span class="spn"><%=obj.getCity()%></span>

                        Sex             <span class="spn"><%=obj.getGender()%></span>

                        Date Of Birth   <span class="spn"><%=obj.getDob()%> </span>

                        Call me at      <span class="spn"><%=obj.getContact_no()%></span>

                        Blood Group     <span class="spn"><%=obj.getBlood_grp()%></span>

                        SignUp Date     <span class="spn"><%=obj.getSignupdate()%>               
                    </pre>
                </div>
            </div>
            <div id="Right">
                <div id="dv7"></div>
            </div>
 <div id="ShowImage">
            <span class="Text">
                Images Uploaded
            </span>
            <img id="ImageClose" src="images/btn-delete.gif">
            <div id="ImageBox">
                <img  height="500px" width="800px" src="uploads/<%=image%>" />
            </div>
        </div>
        <div id="ShowVideo">
             <span class="Text">
                Video Uploaded
            </span>
            <img id="VideoClose" src="images/btn-delete.gif">
            <div id="VideoBox">
            </div>
        </div>
             <div id="EventDisplay">
                                    <div class="scroller"><img class="scrllImg" src="images/arrows_up.gif"><span class="Close">Close</span></div>
                                    <div class="EventDiv" id="EvenDiv1">
                                            <h3 >Event One</h3>
                                            <h5>Starting Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Expiring Date</h5>
                                            <h4>Description</h4><br/><br/>
                                            <h2>Join Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Neglect</h2>
                                    </div>
                                     <div class="EventDiv" id="EvenDiv2">
                                            <h3>Event One</h3>
                                            <h5>Starting Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Expiring Date</h5>
                                            <h4>Description</h4><br/><br/>
                                            <h2>Join Now &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Neglect</h2>
                                    </div>
                                    <div class="scroller1"><img class="scrllImg" src="images/arrows_dn.gif"></div>
                       </div>
            <div id="IssueDisplay">
                 <div id="IssueHeader"><img class="scrllImg" src="images/arrows_up.gif"><span class="Close">Close</span></div>
                                    <div id="IssueInner">
                                    <h3>Issue Name</h3>
                                    <h4>Description</h4><br/><br/><br/>
                                    </div>
                                    <div id="IssueFooter"><img class="scrllImg" src="images/arrows_dn.gif"></div>
                                </div>
            <div id="MyFriend">
            <div id="FriendHeader">
                <pre id="Friend">My Friends</pre>
                <img id="FriendClose" src="images/btn-delete.gif">
           </div>
                <div id="FriendList">
            <div class="Friend1"></div>
            <div class="Friend1"></div>
            <div class="Friend1"></div>
            <div class="Friend1"></div>
                </div>
        </div>
            <div id="MyNgo">
            <div id="NgoHeader">
                <pre id="Ngo">My Ngo's</pre>
                <img id="NgoClose" src="images/btn-delete.gif">
           </div>
                <div id="NgoList">
            <div class="Ngo1"></div>
            <div class="Ngo1"></div>
            <div class="Ngo1"></div>
            <div class="Ngo1"></div>
                </div>
          </div>
        </div>
        <%
                  }
         else{
              rd=request.getRequestDispatcher("LoggedOut.") ; 
              rd.forward(request,response);  
                    }
                    %>
    <jsp:include page="Footer.html"></jsp:include>

    </body>

</html>

