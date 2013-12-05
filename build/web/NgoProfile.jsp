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
        <title>Socioware/NgoProfile</title>
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
    margin-left: 10px;
    margin-top:98px;
    display: none;
    margin-right: 20px;
    background-color: #6699FF;
    border-radius:5px; 
}
#PhotoChange:hover{
    cursor: pointer;
}
            #dv5{
                margin-left: 420px;
                margin-top: 10px;
                width: 250px;
                height: 220px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
                border-top-style: none;

}
                #dv11{
                margin-left: 850px;
                margin-top: -437px;
                width: 150px;
                height: 430px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
 }
                #dv13{
                margin-left: 1010px;
                margin-top: 8px;
                width: 320px;
                height: 430px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
 }
                #dv10{
                margin-left: 685px;
                margin-top: -437px;
                width: 150px;
                height: 430px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;

}
                #dv9{
                margin-left: 420px;
                margin-top: 10px;
                width: 250px;
                height: 198px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;

}
            #dv4{
                margin-left: 420px;
                margin-top: -578px;
                width: 580px;
                height: 130px;
                background-color: #232505;
                border-color:royalblue;
                border-width: thin;
                border-bottom-style: none;
                border-style: ridge;
}
            #dv4_1{
                margin-top:-1px;
                margin-left: -1px;
                width: 578px;
                text-decoration: blink;
                text-align: center;
                color: chocolate;
                height: 20px;
                background-color: #232505;
                border-color:royalblue;

                border-style: ridge;

}
            #dv4_2{
                margin-left: -1px;
                margin-top: -1px;
                width: 22px;
                height: 100px;
                background-color: #232505;
                border-color:royalblue;

                border-style: ridge;
}
            #dv4_3{
                margin-left: 27px;
                margin-top: -106px;
                width: 100px;
                height: 100px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
}
 #dv4_4{
                margin-left: 132px;
                margin-top: -106px;
                width: 100px;
                height: 100px;
                background-color: #232505;
                border-color:royalblue;

                border-style: ridge;
}
                #dv4_5{
                margin-left: 237px;
                margin-top: -106px;
                width: 100px;
                height: 100px;
                background-color: #232505;
                border-color:royalblue;

                border-style: ridge;
}
                #dv4_6{
                margin-left: 342px;
                margin-top: -106px;
                width: 100px;
                height: 100px;
                background-color: #232505;
                border-color:royalblue;

                border-style: ridge;
}
                #dv4_7{
                margin-left: 447px;
                margin-top: -106px;
                width: 100px;
                height: 100px;
                background-color: #232505;
                border-color:royalblue;

                border-style: ridge;
}
                #dv4_8{
                margin-left: 552px;
                margin-top: -106px;
                width: 25px;
                height: 101px;
                background-color: #232505;
                border-color:royalblue;

                border-style: ridge;
}
                #dv12{
                margin-left: 1010px;
                margin-top: -576px;
                width: 320px;
                height: 126px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
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
            #VideoUp{
                position: absolute;
                top: 100px;
                display:none;
                left:930px;
                width: 350px;
                height: 400px;
                background-color: black;
                opacity:.9;
                border: 1px thistle solid;
            }
            #VideoTxt{
                position: absolute;
                top: 180px;
                left: 15px;
                font:bolder x-large cursive ;
                color: orangered;
            }
            #VideoForm{
                position: absolute;
                top:230px;
                left:15px;
                
                
            }
 
            #VideoBox{
                position: absolute;
                top: 15px;
                left: 95px;
                width: 150px;
                height: 150px;
                background-color: whitesmoke;
                opacity:.9;
                border: 1px orangered solid;
                
            }
        </style>
        <style>
            #ImageUp{
                position: absolute;
                top: 100px;
                display:none;
                left:930px;
                width: 350px;
                height: 400px;
                background-color: black;
                opacity:.9;
                border: 1px thistle solid;
            }
            #ImageTxt{
                position: absolute;
                top: 180px;
                left: 15px;
                font:bolder x-large cursive ;
                color: orangered;
            }
            #ImageForm{
                position: absolute;
                top:230px;
                left:15px;
                }
                #Iclose:hover{
                    cursor:pointer;
                }
            #ImageBox{
                position: absolute;
                top: 15px;
                left: 95px;
                width: 150px;
                height: 150px;
                background-color: whitesmoke;
                opacity:.9;
                border: 1px orangered solid;
                
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
                top:390px;
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
               $("#CreateIssue,#PhotoChange,#Image,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disableHeader").css("display","block");});
              
               $("#CreateIssue,#PhotoChange,#Image,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disableFooter").css("display","block");});
              
              $("#CreateIssue,#PhotoChange,#Image,#Video,#ShowEve,#ShowIssue").click(
                function(){$("#disable").css("display","block");});
              
               $("#Iclose,#Pclose,#Vclose,.Close").click(
                function(){$("#disableFooter").css("display","none");

               });
                $("#Iclose,#Pclose,#Vclose,.Close").click(
                function(){$("#disableHeader").css("display","none");

               }); $("#Iclose,#Pclose,#Vclose,.Close").click(
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
                <ul>
                    <li><a class="a2" href="#">Topic 1</a></li>
                    <li><a class="a2" href="#">Topic 2</a></li>
                    <li><a class="a2" href="#">Topic 3</a></li>
                    <li><a class="a2" href="#">See More</a></li>
                </ul></li>
                <li class="l"><a class="a2" href="#">User Name</a>
                <ul>
                    <li><a class="a2" href="#">Home</a></li>
                    <li><a class="a2" href="#">Profile</a></li>
                    <li><a class="a2" href="#">Find Friend/Ngos</a></li>
                    <li><a class="a2" href="#">Setting</a></li>

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
                    <li class="li2"><a class="a5" id="DisplayInfo" href="MyInfo.jsp">My Info</a>
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
            <div id="dv6">
                <span id="PhotoChange"> Change Ngo Logo</span>
               
            </div>
            <span id="span3"><a class="a1_1" id="a1" href="#">NGO Name</a>
                        </span>
            <div id="dv8">
               <ul class="ul2">
                    <li class="li3"><a class="a3" href="#">Requests</a>
                        <ul>
                            <li><a href="#">Request1</a></li>
                            <li><a href="#">Request1</a></li>
                            <li><a href="#">See More</a></li>
                        </ul>
                    </li>
                    <li class="li3"><a class="a3" id="ShowMessage"href="#">Messages</a>
                    </li>
                    <li class="li3"><a class="a3" href="#">Notify</a>
                    <ul>
                            <li><a href="#">Notify 1</a></li>
                            <li><a href="#">Notify 2</a></li>
                            <li><a href="#">See More</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
       </div>
        <div id="dv9">

        </div>
        <div id="dv10">

        </div>
        <div id="dv11">
            <div style="width:140px ; height:420px ;overflow:auto; padding: 5px;">

            </div>
        </div>
        <div id="dv12">
         <div style="width:310px ; height:115px ;overflow:auto; padding: 5px;">
             <p>asdasdasdasdsadsdasaddsa
            asdasdadsfafsdfsdfsfdsad
            asdsfsfdsfdscvadgsdasdfdsa
            dsfsdfadsdsfdasfsdfdsfsf
            sadfafrwaerweferfrergerge
            weawfewrwererfsdfsrsdfdrgfse
            sdfsadfdasfdsfsdfasafdfasd
            sdafdfaerfeafrsrfre
            </p>
        </div>
        </div>
            <div id="dv13">
         <div style="width:310px ; height:420px ;overflow:auto; padding: 5px;">

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
        <div id="ImageUp">
            <img id="Pclose" align="right" src="images/btn-delete.gif">
            <div id="ImageBox"></div>
            <span id="ImageTxt">Write about photo..........</span>
            <form id="ImageForm" action="UploadFileServlet" method="post" enctype="multipart/form-data">
                <textarea rows="3" cols="36"></textarea>
                <input type="file" value="Upload" title="Upload Photo">
                <input type="submit"  value="Upload" title="Click to Upload">
            </form>
        </div>
        <div id="VideoUp">
            <img id="Vclose" align="right" src="images/btn-delete.gif">
            <div id="VideoBox"></div>
            <span id="VideoTxt">Write about video..........</span>
            <form id="VideoForm" action="UploadFileServlet" method="post" enctype="multipart/form-data">
                <textarea rows="3" cols="36"></textarea>
                <input type="file" value="Upload" title="Upload Photo">
                <input type="submit"  value="Upload" title="Click to Upload">
            </form>
        </div>
        <div id="ShowInfo">
            <br/><span class="info">NGO Name</span><br/><br/>
            <span class="info">Places</span><br/><br/>
            <span class="info">Estd Date</span>
        </div>                   
        <div id="DisplayMessage">
            <div id="MessageBorder">
                <span id="MsgBorder">MessageBox</span>
                <img src="images/btn-delete.gif">
            </div>
            <div id="MessageBox"></div>
            
        </div>           
    <jsp:include page="Footer.html"></jsp:include>

    </body>

</html>
