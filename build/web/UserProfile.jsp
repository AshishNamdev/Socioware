<%-- 
    Document   : UserProfile
    Created on : Mar 16, 2012, 12:22:57 AM
    Author     : Vivek
--%>

<%@page import="java.util.ArrayList"%>
<%@ page import="pojo.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Socioware/UserProfile</title>
        
        <link href="style/UserProfile.css" rel="stylesheet" type="text/css" > 
        <script type="text/javascript" src="js/jquery.js"></script>
        <script>
           $(document).ready(function(){
                $("#span3").hover(
            function(){
                $("#ShowInfo").animate({opacity:"show", height:"+=150",width:"+=150"},"slow");},
            function(){
                $("#ShowInfo").animate({opacity:"hide", height:"-=150",width:"-=150"},"fast");
            });
            });
        </script>
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
                $("#ShowMessage").click(function(){
                    $("#DisplayMessage").fadeIn("slow");
                });
               $("#MsgClose").click(function(){
                   $("#DisplayMessage").fadeOut("fast");
               });
            });
        </script>
        
         <script type="text/javascript" >
           function delContent(){
              
               var txt=document.getElementById("js");
              //  alert(txt.value);
               if(txt.value=="Please Enter Some Text"){
                   txt.value=""; 
                   txt.style.border="none";
                        }
                   
           }
           function isEmpty(){
                var data=document.getElementsByName("status");
               // var js=document.getElementById("js");
                if(data[0].value=="" ||data[0].value=="Please Enter Some Text"){
                    data[0].style.border="solid";
                    data[0].style.borderColor="red";
                    data[0].value="Please Enter Some Text";
                    data[0].style.color="red";
                   
                    return false;
                }
                   return true;
                
                    
            }
        </script>
        <script>
            $(document).ready(function(){
                $("#CreateEve").click(
                function(){$("#EventTab").animate({left:"-=950"},"fast")
                                         .animate({left:"+=100"},"fast")
                                         .animate({left:"-=100"},"fast")
                                         .animate({left:"+=50"},"fast")
                                         .animate({left:"-=50"},"fast");
                                         
               });
               $("#CreateEve").click(
                function(){$("#disable").css("display","block");});
              
               $("#close").click(
                function(){$("#EventTab").animate({left:"+=950"},"slow");

               });
               $("#CreateEve").click(
                function(){$("#disableHeader").css("display","block");});
              
               $("#CreateEve").click(
                function(){$("#disableFooter").css("display","block");});
              
               $("#close").click(
                function(){$("#disableFooter").css("display","none");

               });
                $("#close").click(
                function(){$("#disableHeader").css("display","none");

               }); $("#close").click(
                function(){$("#disable").css("display","none");

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
               $("#CreateIssue,#DisplayNotify,#RequestDisplay,#PhotoChange,#Image,#ShowMessage,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disableHeader").css("display","block");});
              
               $("#CreateIssue,#DisplayNotify,#RequestDisplay,#PhotoChange,#Image,#ShowMessage,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disableFooter").css("display","block");});
              
              $("#CreateIssue,#RequestDisplay,#DisplayNotify,#PhotoChange,#Image,#ShowMessage,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disable").css("display","block");});
              
               $("#Iclose,#Pclose,#MsgClose,#ReqClose,#Vclose,#CloseChange,#NotifyClose,.Close").click(
                function(){$("#disableFooter").css("display","none");

               });
                $("#Iclose,#Pclose,#MsgClose,#CloseChange,#ReqClose,#Vclose,#NotifyClose,.Close").click(
                function(){$("#disableHeader").css("display","none");

               }); $("#Iclose,#Pclose,#Vclose,#MsgClose,#CloseChange,#ReqClose,#NotifyClose,.Close").click(
                function(){$("#disable").css("display","none");

               });
                         });
        </script>
        <script>
            $(document).ready(function(){
                $("#dv6").hover(
                function(){
                    $("#PhotoChange").css("display","block")
                                     .css("text-decoration","blink")
                                     .css("color","orangered");},
                function(){
                    $("#PhotoChange").css("display","none");
                }                 
                  );
                $("#PhotoChange").click(
                
                    function(){$("#ImageChange").animate({opacity: "show" , top:"+150px"},"slow");
                }); 
                $("#CloseChange").click(
                    function(){$("#ImageChange ").animate({opacity: "hide" , top:"-150px"},"slow");
                        
                    });
            });
        </script>
        <script>
            $(document).ready(function(){
                $("#Image").click(
                function(){$("#ImageUp").animate({opacity: "show" , top:"+150px"},"slow");
                    
                });
                $("#Pclose").click(
                    function(){$("#ImageUp").animate({opacity: "hide" , top:"-150px"},"slow");
                        
                    });
                $("#Video").click(
                function(){$("#VideoUp").animate({opacity: "show" , top:"+150px"},"slow");
                    
                });
                $("#Vclose").click(
                    function(){$("#VideoUp").animate({opacity: "hide" , top:"-150px"},"slow");
                        
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
                $("#RequestDisplay").click(
                function(){$("#Request").css("display","block");

              });
              $("#ReqClose").click(
                function(){$("#Request").css("display","none");

                });

                
               });
        </script>
         <script>
            $(document).ready(function(){
                $("#DisplayNotify").click(
                function(){$("#Notify").css("display","block");
                      });
                    $("#NotifyClose").click(
                function(){$("#Notify").css("display","none");

                });


               });
        </script>
    </head>
    <body id="bd">
        <%
                
           HttpSession sessobj=request.getSession(false);
           if(sessobj==null){
              // System.out.println("in if condition");
               RequestDispatcher rd=request.getRequestDispatcher("LoggedOut.jsp");
               rd.forward(request, response);
                             }
              else{
                  String id=(String)sessobj.getAttribute("id");
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
                <%
                UserSignup us=new UserSignup();
               
                us.setEmail(id);
                 UserSignup usr=us.getUserInfo();
                 
                %>
                <li class="l"><a  class="a2" href="DisscussionForum.jsp">Discussion</a>
             </li>
             <li class="l"><a class="a2"><%=usr.getFname() %></a>
                <ul>
                    <li><a class="a2" href="MyInfo.jsp?qid=<%=id%>">Home</a></li>
                    <li><a class="a2" href="UserProfile.jsp">Profile</a></li>
                    <li><a class="a2" href="#">Find Friend/Ngos</a></li>
                    <%--      <li><a class="a2" href="#">Setting</a></li>--%>

                </ul></li>
                <li class="l"><a class="a2" href="LogoutServlet">LogOut</a></li>
            </ul>
        </div>

        <div id="main">
        <span id="span2">What u think?</span>
       <form action="PublishStatusServlet" method="post">
        
            <div id="dv2">
            <textarea id="js" name="status" rows="3" cols="47" onfocus="delContent()"></textarea>
           </div>
            <span id="js"></span>
            <input type="submit" id="btn1" title="Click to publish" value="Publish" onclick="return isEmpty()"/>
            <input type="reset" id="btn2" title="Click to Clear" value="Clear"/>
        </form>
        <div id="dv3">
            <div id="dv3_1">My Updates</div>
            <div id="UpdateScroller"> 
                <%
                    Status status = new Status();
                    status.setUnid(id);
                    User user = new User();
                    ArrayList<Status> status_list = status.findAllStatus();
                    for(int i=0;i<status_list.size();i++)
                    {
                        user = status_list.get(i).getUser();
                        status = status_list.get(i);
                %>  
                <div class="stts">
                     <a class="rs" href="SecondUserProfile.jsp?qid=<%=user.getEmail()%>">
                         <img width="30px" height="30px" alt="ulpoads/na.jpg" src="uploads/<%=user.getUserImage()%>" />
                         <span class="pblsr"><%=user.getFname()+user.getMname()+user.getLname()%></span>
                     </a>
                </div>
                <div class="stts"><%=status.getContent()%>
                </div>
                <%
                    }
                %>
             </div>
        </div>
        <div id="dv4">
            <div id="dv4_1">Add More NGO's</div>
            <div id="dv4_2"><a href="#"><img class="arrow" src="images/arrowL.png"></a></div>
            <div class="dv4_4" id="dv4_3"></div>
                <a href="#"><div class="dv4_4" id="dv4_4"></div></a>
                <a href="#"><div class="dv4_4" id="dv4_5"></div></a>
                <a href="#"><div class="dv4_4" id="dv4_6"></div></a>
                <a href="#"><div class="dv4_4" id="dv4_7"></div></a>
                <div id="dv4_8"><a href="#"><img class="arrow" src="images/arrowR.png"></a></div>
        </div>
        <div id="dv5">
            <div id="dv7">
                <ul class="ul1">
                    <li class="li2"><a class="a5" id="DisplayInfo" href="MyInfo.jsp?qid=<%=id%>">My Info</a>
                    </li>
                    <li class="li2"><a class="a5" href="#">Upload</a>
                        <ul>
                            <li><a id="Image" href="#">Images</a></li>
                            <li><a id="Video" href="#">Videos</a></li>
                            </ul></li>
                    <li class="li2"><a class="a5"  href="#">More</a>
                    <ul class="more1">
                            <li><a class="more" id="ShowEve" href="#">Events</a>
                            </li>
                            <li><a class="more" id="ShowIssue" href="#">Issues</a>
                            </li>
                    </ul></li>
                </ul>
            </div>
                    <%
                       UserImage img=new UserImage();
                       img.setUid(id);
                       UserImage uimg=img.getImage();
                        %>
            <div id="dv6">
                <a href="MyInfo.jsp?qid=<%=id%>"> <img width="150px" height="120px" src="uploads/<%=uimg.getUserImage()%>" /></a>
                <span id="PhotoChange"> Change photo</span>
               
            </div>
            <span id="span3"><a class="a1_1" id="a1"><%=usr.getName() %></a>
                        </span>
            <div id="dv8">
               <ul class="ul2">
                    <li class="li3"><a id="RequestDisplay" class="a3" href="#">Requests</a>
                    </li>
                    <li class="li3"><a class="a3" id="ShowMessage" href="#">Messages</a>
                    </li>
                    <li class="li3"><a id="DisplayNotify" class="a3" href="#">Notify</a>
                    </li>
                </ul>
            </div>
       </div>
        <div id="dv9">
             <div id="MyAlbum">
                My Album
            </div>
            <div id="AlbumScroller"></div>

        </div>
        <div id="dv10">
            <div id="FriendTxt">
                My Friends
            </div>
                <div id="FriendScroller">
                  <%
                     FriendList fl=new FriendList();
                     fl.setUserid(id);
                      ArrayList<FriendList> fls=fl.getFriendList();
                      String image=null;
                        for(int i=0;i<fls.size();i++)
                        {
                            image=fls.get(i).getUserimage();
                            if(image==null)
                                image="na.jpg";
                       %>
                <div class="frnd">
                     <a class="rs" href="SecondUserProfile.jsp?qid=<%=fls.get(i).getFriendid()%>">
                         <img width="40px" height="40px" alt="ulpoads/na.jpg" src="uploads/<%=image%>" />
                         <span class="usr"><%=fls.get(i).getName()%></span>
                     </a>
                </div>
                <%
                         }
                    %>
            </div>
           </div>

           <div id="dv12">
            <div id="StarContributor">
                Star Contributor
            </div>
            
            <div id="StarScroller">
              The Overview and Details of Star Contributor
              Will be Published Time To Time Here 
              In the section of Star Contributor.
              Star Contributor will be selected on the Largest number of
              events Created and issues published 
              and with the support to the society.
              Star Contributor will be the Great Person who support 
              and helps society.
                        </div>
            
        </div>
            <div id="dv13">
         <div id="NgoTxt">
                My Ngo
            </div>
            <div id="NgoScroller">
                <div id="FriendScroller">
                  <%
                     NgoList nl=new NgoList();
                     fl.setUserid(id);
                      ArrayList<NgoList> nlst=nl.getNgoList();
                      String nimage=null;
                       System.out.println("nlst size :"+nlst.size());
                        for(int i=0;i<nlst.size();i++)
                        {
                            nimage=nlst.get(i).getNgologo();
                            if(nimage==null)
                                nimage="na.jpg";
                       %>
                <div class="frnd">
                     <a id="rs" href="SecondUserProfile.jsp?qid=<%=nlst.get(i).getEmailid()%>">
                         <img width="40px" height="40px" alt="ulpoads/na.jpg" src="uploads/<%=nimage%>" />
                         <span class="usr"><%=nlst.get(i).getName()%></span>
                     </a>
                </div>
                <%
                         }
                    %>
            </div>
            </div>
   </div>

        </div>
        <div id="disableHeader"></div>
        <div id="disableFooter"></div>
        <div id="disable"></div>
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
        <div id="ImageChange">
            <img id="CloseChange" align="right" src="images/btn-delete.gif">
            
            <span id="TxtChange">Upload your photo..........</span>
            <form id="FormChange" action="UserImageUploadServlet" method="post" enctype="multipart/form-data">
                <input type="file" name="uploadfile"  title="Upload Photo">
                <input type="submit"  name="Submit" value="Upload" title="Click to Upload">
            </form>
        </div>
        <div id="ImageUp">
            <img id="Pclose" align="right" src="images/btn-delete.gif">
            
            <span id="ImageTxt">Upload your photo..........</span>
            <form id="ImageForm" action="AddFileServlet" method="post" enctype="multipart/form-data">
                <input type="file" name="uploadfile"  title="Upload Photo">
                <input type="submit"  name="Submit" value="Upload" title="Click to Upload">
            </form>
        </div>
        <div id="VideoUp">
            <img id="Vclose" align="right" src="images/btn-delete.gif">
          
            <span id="VideoTxt">Upload your video..........</span>
            <form id="VideoForm" action="AddFileServlet" method="post" enctype="multipart/form-data">
                 <input type="file" name="uploadfile"  title="Upload Photo">
                <input type="submit"  name="Submit" value="Upload" title="Click to Upload">
            </form>
        </div>
                    
        <div id="ShowInfo">
            <br/><span class="info">User Name : <%=usr.getName()%></span><br/><br/>
            <span class="info">Places  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%=usr.getCity() %></span><br/><br/>
            <span class="info">Date Of Birth : <%=usr.getDob() %></span>
        </div>                   
        <div id="DisplayMessage">
              <div id="MessageBorder">
                <span id="MsgBorder">MessageBox</span>
                <img id="MsgClose" src="images/btn-delete.gif">
            </div>
            <div id="Message">
                <div id="MsgScroller">
            <div id="MessageBox">
			<%
				Message msg = new Message();
				msg.setReceiverid(id);
				ArrayList<Message> msgs_list = msg.findAllMessages();
				for(int i=0;i<msgs_list.size();i++)
				{
                                    user = msgs_list.get(i).getUser();
			%> 
			<div class="MsgBox">
				<a class="rs" href="SecondUserProfile.jsp?qid=<%=msgs_list.get(i).getSenderid()%>">
				<img width="30px" height="30px" alt="ulpoads/na.jpg" src="uploads/<%=user.getUserImage()%>" />
				<span class="usr"><%=user.getFname()+user.getMname()+user.getLname()%></span>
				</a>
				<span class="msg"><%=msgs_list.get(i).getMessage()%></span>
			</div>
			<%
				}
			%>
               <!-- <div id="MsgBox2"></div>
                <div id="MsgBox3"></div> -->
            </div>
                </div>
            </div>
        </div>
            <div id="Request">
                <div id="RequestHeader"><span id="Req">Friend Request</span>
                    <img id="ReqClose" src="images/btn-delete.gif">
                </div>
                <div id="RequestList">
					<% 
						FriendRequest frnd_req = new FriendRequest();
						frnd_req.setReqReciever(id);
						ArrayList<FriendRequest> frnd_req_list = frnd_req.findReceivedRequest();
						for(int i=0;i<frnd_req_list.size();i++)
						{
							frnd_req = frnd_req_list.get(i);
                                                        
                                                        System.out.println(frnd_req.getName());
					%> 
                                        <div class="RequestList1">
						<div class="frnd_req" >
							<a class="rs" href="SecondUserProfile.jsp?qid=<%=frnd_req.getEmail()%>" style="color: white">
								<img width="40px" height="40px" src="uploads/<%=frnd_req.getImage()%>" alt="ulpoads/na.jpg" title="<%=frnd_req.getName()%>"></img>
								<span class="usr"><%=frnd_req.getName()%></span>
							</a>
					</div>
					<form class="ReqForm" action="AcceptRequest?qid=<%=frnd_req.getEmail()%>" method="post">
						<input type="submit" value="Accept" title="Accept friend">
						<input type="button" value="Decline" title="Decline friend">
					</form>
					</div>
					<%
						}
					%>
                </div>		
               </div>
        <div id="Notify">
                <div id="NotifyHeader"><span id="Noti">My Notice Board</span>
                    <img id="NotifyClose" src="images/btn-delete.gif"></div>
                <div id="NotifyList">
                    <div class="NotifyList1"></div>
                    <div class="NotifyList1"></div>
                    <div class="NotifyList1"></div>
                    <div class="NotifyList1"></div>
                    <div class="NotifyList1"></div>
                    <div class="NotifyList1"></div>
                </div>
               </div>
            <%
                  }
              %>
                    
    <jsp:include page="Footer.html"></jsp:include>
    

 
        </body>

</html>

