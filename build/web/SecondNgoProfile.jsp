<%-- 
    Document   : UserProfile
    Created on : Mar 16, 2012, 12:22:57 AM
    Author     : Vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Socioware/SecondNgoProfile</title>
        <style>
.ul2{
    list-style: none;
    margin: 0px;
    margin-left: -41px;
}

             .ul2 .li3 .a3{

    position:relative;
    display: block;
    padding: 0px;
    text-decoration: none;
    background-color: #696969;
    color: whitesmoke;
    border:1px royalblue ridge;
    text-align: center;
    font-family: Comic Sans MS;
    font-size: small;
    border-radius:2px;
    border-bottom-width: 2px;
}
.li3{
    display:table-cell;
    width: 90px;
}
.li3 ul{
    width: 85px;

}

        </style>
        <style>
             .ul1{
    list-style: none;
    margin: 0px;
    margin-left: -41px;
}
             .ul1 .li2 .a5{
    position:relative;
    display: block;
    padding: 0px;
    text-decoration: none;
    background-color: #696969;
    color: whitesmoke;
    border:1px royalblue ridge;
    text-align: center;
    font-family: Comic Sans MS;
    font-size: small;
    border-radius:2px;
    border-bottom-width: 2px;
}
.li2{
    display:table-cell;
    width: 90px;
}
.li2 ul{
    width:85px;
}


        </style>
        <style>

            #span3{
                margin-left: 75px;
                margin-top: 10px;
}
            #dv8{
                 margin-left: 0px;
                margin-top: 6px;
                width: 250px;
                height: 21px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
                border-left-style:  none;
                border-right-style: none;
}
            #dv7{
                margin-left: 0px;
                margin-top: -1px;
                width: 250px;
                height: 20px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
                border-left-style:  none;
                border-right-style: none;
}
#dv6:hover{
                background-color:whitesmoke;
                opacity:.9;
}
            #dv6{
                margin-top: 18px;
                margin-left: 47px;
                height: 120px;
                width: 150px;
                background-image: url("images/images.jpg");
                border-color:royalblue;
                border-style: ridge;

}
#PhotoChange{
    margin-left: 20px;
    margin-top:98px;
    display: none;
    margin-right: 40px;
    background-color: #6699FF;
    border-radius:5px; 
}
#PhotoChange:hover{
    cursor: pointer;
}
            #dv5{
                margin-left: 420px;
                margin-top: -450px;
                width: 250px;
                height: 220px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
                border-top-style: none;

}
                #dv11{
                margin-left: 850px;
                margin-top: -550px;
                width: 150px;
                height: 545px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
 }
                #dv13{
                margin-left: 1010px;
                margin-top: -550px;
                width: 320px;
                height: 545px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
 }
 #NgoTxt{
    position: relative;
    left: 0px;
    border: 1px royalblue solid;
    font-size: large;
    font-weight: bold;
    background-color: #556B2F;
    height: 25px;
        text-decoration: blink;
    color: orange;
}
#NgoScroller{
    position: relative;
    width: 20px;
    left: 299px;
    top: 1px;
    height: 518px;
    overflow: auto;
}

                #dv10{
                margin-left: 685px;
                margin-top: -550px;
                width: 310px;
                height: 545px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;

}
#FriendTxt{
    position: relative;
    left: 0px;
    border: 1px royalblue solid;
    font-size: large;
    font-weight: bold;
    background-color: #556B2F;
    height: 25px;
        text-decoration: blink;
    color: orange;
}
#FriendScroller{
    position: relative;
    width: 20px;
    left: 289px;
    top: 1px;
    height: 518px;
    overflow: auto;
}
                #dv9{
                margin-left: 420px;
                margin-top: 10px;
                width: 250px;
                height: 310px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;

}
#ThoughtTxt{
    position: relative;
    left: 0px;
    border: 1px royalblue solid;
    font-size: large;
    font-weight: bold;
    background-color: #556B2F;
    height: 25px;
    text-decoration: blink;    
    color: orange;
}
#ThoughtScroller{
    position: relative;
    width: 20px;
    left: 230px;
    top: 1px;
    height: 281px;
    
    overflow: auto;
}

              
            #dv3{
                margin-left: 5px;
                margin-top: 10px;
                width: 401px;
                height: 430px;
                background-color:#232505;
                border-color:royalblue;
                border-style: ridge;
}

#UpdateTxt{
    position: relative;
    left: 0px;
    border: 1px royalblue solid;
    font-size: large;
    font-weight: bold;
    background-color: #556B2F;
    height: 25px;
    text-decoration: blink;    
    color: orange;
}
#UpdateScroller{
    position: relative;
    width: 20px;
    left:380px;
    top: 0px;
    height: 402px;
    
    overflow: auto;
}
            #btn1{
                margin-left: 285px;
                margin-top: 4px
}
            #dv2{
                margin-left: 5px;
                margin-top: 60px;
                width: 401px;
                height: 72px;
                background-color: wheat;

                border-color:royalblue;
                border-width: medium;
                border-style: ridge;
}
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
    margin-left: 60px;
}
ul{
    list-style: none;
    margin-top: -20px;
    margin-left: 720px;
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
.arrow{
   margin-top: 40px;
   text-decoration: none;
}

li ul{
    position: absolute;
    display: none;
    width:120px;
    margin-left:-40px;
    margin-top: 0px;

}

#main{
    margin-left: 10px;
    position: absolute;
    z-index: -1;
    height: 700px;
    
}
        </style>
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
            #ShowImage{
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
            .info{
                vertical-align: middle;
                margin-left: 20px;
                color: whitesmoke;
                font-weight: bolder;
                font-family: Comic Sans MS;
            }
            #ShowInfo{
                position: absolute;
                display: none;
            top:275px;
                opacity:.8;
                left: 480px;
                height: 10px;
                width: 10px;
                background-color: black;
                border: 2px white solid;
                border-radius:50px;
                    
                
            }
        </style>
        <style>
            #DisplayMessage{
                display: none;
                position: absolute;
                top: 150px;
                left: 970px;
                width:325px;
                height: 400px;
                background-color:black;
                border: 2px whitesmoke solid;
                opacity:.9;
                }
                #MessageBorder{
                    position: absolute;
                    width: 325px;
                    height: 40px;
                    border: 1px white solid;
                    border-collapse: collapse;
                    background-color: red;
                }
                #MsgClose{
                    position: absolute;
                    left: 309px;
                }
                #MsgClose:hover{
                    cursor:pointer;                        
                }
                #MessageBox{
                    position: absolute;
                    top:40px;
                     
                    border-collapse: collapse;
                    height: 360px;
                    width: 325px;
                    border: 1px wheat solid;
                }
                #MsgTextArea{
                    position: absolute;
                    left: 10px;
                    top: 30px;
                }
                #MsgSend{
                    position: absolute;
                    top: 200px;
                    left: 10px;
                }
        </style>
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
                $("#ShowMessage").click(
                function(){$("#DisplayMessage").fadeIn("slow");
               });
                $("#MsgClose").click(
                function(){$("#DisplayMessage").fadeOut("fast");
                });
            });
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
               $("#CreateIssue,#ShowMessage,#PhotoChange,#Image,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disableHeader").css("display","block");});
              
               $("#CreateIssue,#ShowMessage,#PhotoChange,#Image,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disableFooter").css("display","block");});
              
              $("#CreateIssue,#PhotoChange,#ShowMessage,#Image,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disable").css("display","block");});
              
               $("#Iclose,#Pclose,#VideoClose,#MsgClose,#ImageClose#Vclose,.Close").click(
                function(){$("#disableFooter").css("display","none");

               });
                $("#Iclose,#VideoClose,#Pclose,#MsgClose,#ImageClose,#Vclose,.Close").click(
                function(){$("#disableHeader").css("display","none");

               }); $(",#VideoClose,#Iclose,#Pclose,#MsgClose,#ImageClose,#Vclose,.Close").click(
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
                
                    function(){$("#ImageUp").animate({opacity: "show" , top:"+150px"},"slow");
                }); 
                $("#Pclose").click(
                    function(){$("#ImageUp").animate({opacity: "hide" , top:"-150px"},"slow");
                        
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
                function(){$("#ShowVideo").animate({opacity: "show" , top:"+50px"},"slow");;
                    
                });
                $("#VideoClose").click(
                    function(){$("#ShowVideo").animate({opacity: "hide" , top:"-100px"},"slow");
                        
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
                });
        </script>
    </head>
    <body id="bd">
         <div id="dv1">
            <span id="span1">Socioware<sub id="sub1">B social B Realstic</sub></span>
            <input id="ip1" type="text" size="40"><a id="a1" href="#">&nbsp;&nbsp;Find&nbsp;&nbsp;</a>
            <ul>
               <li class="l"><a class="a2" id="CreateIssue" href="#">Create Issue</a>
               <form>  <div id="IssueTab">
                            <span id="issueTxt">Put your Problem...................</span>
                        <img id="Iclose" align="right" src="images/btn-delete.gif">
                        <table id="ITable" cellpadding="3">
                        <tr>
                            <th><p>IssueName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Give your event name" ></td>
	</tr>
	<tr>
	<th><p>Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Write your event subject" ></td>
	</tr>
	<tr>
	<th><p>StartDate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Enter date" ></td>
	</tr>
	<tr>
	<th><p>ExpireDate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Expire Date" ></td>
	</tr>
	<tr>
            <th></th>  <th><textarea rows="3" cols="40"></textarea></th>
	</tr>
	<tr>
            <th></th><td align="right"><input id="Create"type="Button" title="Create your event" value="create" ></td>
	</tr>
    </table>
</div></form>
               </li>
                <li class="l"><a class="a2" id="CreateEve" href="#">Create events</a>
                    <form>  <div id="EventTab">
                            <span id="eventTxt">Create your event...................</span>
                        <img id="close" align="right" src="images/btn-delete.gif">
                        <table id="Table" cellpadding="3">
                        <tr>
                            <th><p>EventName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Give your event name" ></td>
	</tr>
	<tr>
	<th><p>Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Write your event subject" ></td>
	</tr>
	<tr>
	<th><p>StartDate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Enter date" ></td>
	</tr>
	<tr>
	<th><p>ExpireDate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></th><td><input type="text" title="Expire Date" ></td>
	</tr>
	<tr>
            <th></th>  <th><textarea rows="3" cols="40"></textarea></th>
	</tr>
	<tr>
            <th></th><td align="right"><input id="Create"type="Button" title="Create your event" value="create" ></td>
	</tr>
    </table>
</div></form>
                </li>
                <li class="l"><a  class="a2" href="#">Discussion</a>
                </li>
                <li class="l"><a class="a2" href="#">User Name</a>
                <ul>
                    <li><a class="a2" href="#">Home</a></li>
                    <li><a class="a2" href="#">Profile</a></li>
                    <li><a class="a2" href="#">Find Friend/Ngos</a></li>
                    <%-- <li><a class="a2" href="#">Setting</a></li>  --%>

                </ul></li>
                <li class="l"><a class="a2" href="LogoutServlet">LogOut</a></li>
            </ul>
        </div>

        <div id="main">
        <span id="span2">My Wall</span>
       <form action="PublishStatusServlet" method="post">
        
            <div id="dv2">
            <textarea id="js" name="status" rows="3" cols="47" onfocus="delContent()"></textarea>
           </div>
            <span id="js"></span>
            <input type="submit" id="btn1" title="Click to publish" value="Publish" onclick="return isEmpty()"/>
            <input type="reset" id="btn2" title="Click to Clear" value="Clear"/>
        </form>
        <div id="dv3">
            <div id="UpdateTxt">
                My Updates
            </div>
            <div id="UpdateScroller"></div>

        </div>
        <div id="dv5">
            <div id="dv7">
                <ul class="ul1">
                    <li class="li2"><a class="a5" id="DisplayInfo" href="MyInfo.jsp">My Info</a>
                    </li>
                    <li class="li2"><a class="a5" href="#">Show</a>
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
            <div id="dv6">
               
               
            </div>
            <span id="span3"><a class="a1_1" id="a1" href="#">Ngo Name</a>
                        </span>
            <div id="dv8">
               <ul class="ul2">
                    <li class="li3"><a class="a3" href="#">Make friend</a>
                    </li>
                    <li class="li3"><a class="a3" id="ShowMessage"href="#">Messages</a>
                    </li>
                    <li class="li3"><a class="a3" href="#">Home</a>
                    </li>
                </ul>
            </div>
       </div>
        <div id="dv9">
            <div id="ThoughtTxt">
               Thought
            </div>
            <div id="ThoughtScroller"></div>

        </div>
        <div id="dv10">
            <div id="FriendTxt">
                My Friend
            </div>
            <div id="FriendScroller"></div>

        </div>

        
                
            <div id="dv13">
         <div id="NgoTxt">
                My Ngo's
            </div>
            <div id="NgoScroller"></div>


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
        <div id="ShowImage">
            <span class="Text">
                Images Uploaded
            </span>
            <img id="ImageClose" src="images/btn-delete.gif">
            <div id="ImageBox">
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
        <div id="ShowInfo">
            <br/><span class="info">Ngo Name</span><br/><br/>
            <span class="info">Places</span><br/><br/>
            <span class="info">Estd. Date</span>
        </div>                   
        <div id="DisplayMessage">
            <div id="MessageBorder">
                <span id="MsgBorder">MessageBox</span>
                <img id="MsgClose" src="images/btn-delete.gif">
            </div>
            <div id="MessageBox">
                <textarea id="MsgTextArea"rows="8" cols="35"></textarea>
                <form id="MsgSend">
                    <input type="submit" value="Send" title="Send Your Message" >
                    <input type="reset" value="Clear" title="Clear this field" >       
                </form>
            </div>
            
        </div>           
    <jsp:include page="Footer.html"></jsp:include>

    </body>

</html>
