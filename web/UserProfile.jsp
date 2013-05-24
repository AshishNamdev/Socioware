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
                 margin-top: -10px;
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
    position:absolute;
    margin-left: 30px;
    margin-top:-20px;
    display: none;
    margin-right: 60px;
    background-color: #6699FF;
    border-radius:5px; 
    z-index: +1
      
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
               
                #dv13{
                margin-left: 1010px;
                margin-top: 8px;
                width: 320px;
                height: 480px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
 }
 #NgoTxt{
    color:orange;
    font-size: large;
    font-weight: bold;
    top: 3px;
    left: 10px;
    height: 25px;
    border: 1px royalblue solid;
    text-decoration: blink;
    background-color: #556B2F;
}
#NgoScroller{
    position: relative;
    left: 300px;
    top: 0px;
    width: 20px;
    height: 403px;
    overflow: auto;
}

                #dv10{
                margin-left: 685px;
                margin-top: -490px;
                width: 310px;
                height: 480px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;

}
#FriendTxt{
    color:orange;
    font-size: large;
    font-weight: bold;
    top: 3px;
    left: 10px;
    height: 25px;
    border: 1px royalblue solid;
    text-decoration: blink;
    background-color: #556B2F;
}
#FriendScroller{
    
    left: 290px;
    top: 0px;
    width: 309px;
    height: 400px;
    margin-top: 3px;
    overflow: auto;
}
                #dv9{
                margin-left: 420px;
                margin-top: 10px;
                width: 250px;
                height: 260px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;

}
#MyAlbum{
    position: relative;
    width: 249px;
    color:orange;
    text-decoration: blink;
    font-size:  large;
    font-weight: bolder;
    height: 20px;
    background-color: #556B2F;
    border: 1px royalblue solid;
} 
#AlbumScroller{
     position: relative;
    left: 229px;
    top: 0px;
    width: 20px;
    height: 177px;
    overflow: auto;   
}
            #dv4{
                margin-left: 420px;
                margin-top: -630px;
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
                color: orange;
                font-weight: bold;
                font-size: large;
                height: 20px;
                background-color: #556B2F;
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
                margin-top: -625px;
                width: 320px;
                height: 126px;
                background-color: #232505;
                border-color:royalblue;
                border-style: ridge;
}
#StarScroller{
               
                width: 315px;
                height: 101px;
                left:300px;
                overflow: auto;
                color:white;
                margin-left: 5px;
                margin-top: 2px;
               
}
#StarContributor{
    position: relative;
    width: 320px;
    text-decoration: blink;
    height: 20px;
    border: 1px royalblue solid;
    color: orange;
    font-size:large;
    font-weight: bold;
    background-color: #556B2F;
}
            #dv3{
                margin-left: 5px;
                margin-top: 10px;
                width: 401px;
                height: 475px;
                background-color:#232505;
                border-color:royalblue;
                border-style: ridge;
}
#UpdateScroller{
   
    width: 400px;
    top:1px;
    left: 380px;
    height: 447px;
    overflow: auto;
    overflow-x:none;
}
#dv3_1{
    position: relative;
    
    background-color: #556B2F;
    color: orange;
    text-decoration: blink;
    width: 399px;
    height: 25px;
    font-weight: bolder;
    font-size: large;
    border: 1px royalblue solid;
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
    margin-left: 700px;
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
                top: 500px;
                display:none;
                left:700px;
                width: 400px;
                height: 100px;
                background-color: black;
                opacity:.9;
                border: 1px thistle solid;
            }
            #VideoForm{
                position: absolute;
                top:50px;
                left:15px;
                
                
            }
                       #VideoTxt{
               position: absolute;
                top: 10px;
                left: 15px;
                font:bolder x-large cursive ;
                color: orangered;
            }
 
 
        </style>
        <style>
            #ImageUp{
                position: absolute;
                top: 500px;
                display:none;
                left:700px;
                width: 400px;
                height: 100px;
                background-color: black;
                opacity:.9;
                border: 1px thistle solid;
            }
            #ImageTxt{
                position: absolute;
                top: 10px;
                left: 15px;
                font:bolder x-large cursive ;
                color: orangered;
            }
            #ImageForm{
                position: absolute;
                top:50px;
                left:15px;
                }
                #Iclose:hover{
                    cursor:pointer;
                }
        </style>
               <style>
            #ImageChange{
                position: absolute;
                top: 500px;
                display:none;
                left:700px;
                width: 400px;
                height: 100px;
                background-color: black;
                opacity:.9;
                border: 1px thistle solid;
            }
            #TxtChange{
                position: absolute;
                top: 10px;
                left: 15px;
                font:bolder x-large cursive ;
                color: orangered;
            }
            #FormChange{
                position: absolute;
                top:50px;
                left:15px;
                }
                #CloseChange:hover{
                    cursor:pointer;
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
.usr{
  position: absolute;
    margin-top:5px;
    margin-left: 25px;
    padding:5px;
    
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
                top:370px;
                opacity:.8;
                left: 480px;
                height: 25px;
                width: 200px;
                background-color: black;
                border: 2px white solid;
                border-radius:50px;
                    
                
            }
        </style>
        <style>
            #MsgScroller{
                overflow:auto;
                margin-top:-5px;
                height:404px;
            }
            #DisplayMessage{
                display:none;
                position: absolute;
                top: 150px;
                left:770px;
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
                    position: relative;
                    top:40px;
                    margin-top: 5px;
                    height: 100px;
                    width: 325px;
                                        
                }
                .MsgBox{
                    position: relative;
                    width: 315px;
                    margin-top: 0px;
                    border-top: 1px seagreen solid;
                    height: 25px;
                    padding: 5px;
                    color:white;
                }
              /*   #MsgBox2{
                    position: relative;
                    width: 325px;
                    border-bottom: 1px wheat solid;
                    height: 120px;
                }
                 #MsgBox3{
                    position: absolute;
                    width: 325px;
                    border-bottom: 1px wheat solid;
                    height: 120px;
                }
                */
        </style>
        <style>
            #Request{
              position: absolute;
              top: 60px;
              left: 690px;
                width: 400px;
                height: 550px;
                opacity:.9;
                border-radius:5px;
                background-color:black;
                border: 2px orangered solid;
                display:none;
            }
            #RequestHeader{
                position: absolute;
                width: 399px;
                height: 30px;
                background-color: snow;
                border-collapse: collapse;
                border: 1px orangered solid;
                border_radius:5px;
                opacity:.5;
}


#Req{
    position: absolute;
    left: 10px;
    top: 3px;
    color: orangered;
    text-decoration: underline;
    font-size: large;
    font-weight: bold;

}
#ReqClose{
    position: absolute;
    left: 383px;
}
#RequestList{
    position: absolute;
    top: 31px;
    width: 400px;
    height: 518px;
    overflow: auto;
    border: 1px orangered solid;
    border-radius:5px;
    border-collapse: collapse;
}
.RequestList1{
    position: relative;
    margin: 0px;
    height: 86.3px;
    width: 400px;
    border-bottom: 1px whitesmoke solid;

}
#ReqClose:hover{
    cursor: pointer;
}
.ReqForm{
    position: absolute;
    top: 55px;
}
        </style>
        <style>
            #Notify{
              position: absolute;
              top: 60px;
              left: 690px;
                width: 400px;
                height: 550px;
                opacity:.9;
                border-radius:5px;
                background-color:black;
                border: 2px orangered solid;
                display:none;
            }
            #NotifyHeader{
                position: absolute;
                width: 399px;
                height: 30px;
                background-color: snow;
                border-collapse: collapse;
                border: 1px orangered solid;
                border_radius:5px;
                opacity:.5;
}

            
#Noti{
    position: absolute;
    left: 10px;
    top: 3px;
    color: orangered;
    text-decoration: underline;
    font-size: large;
    font-weight: bold;

}
#rs{
    text-decoration:none;
    color:white;
    font-weight:bold;
    font-family: inherit;
}
#NotifyClose{
    position: absolute;
    left: 383px;
}
#NotifyList{
    position: absolute;
    top: 31px;
    width: 400px;
    height: 518px;
    overflow: auto;
    border: 1px orangered solid;
    border-radius:5px;
    border-collapse: collapse;
}
.NotifyList1{
    position: relative;
    margin: 0px;
    height: 86.3px;
    width: 400px;
    border-bottom: 1px whitesmoke solid;

}
#NotifyClose:hover{
    cursor: pointer;
}
.NotifyForm{
    position: absolute;
    top: 55px;
}
.stts{
  
   width: 399px;
   color:white;
   font-weight: normal;
   font-size: medium;
   display:block;
   max-width: 399px;
   border-top-style: solid;
   border-width: 1px;
   border-color:seagreen;
   border-collapse: collapse;
}
.frnd{
   position: relative;
   color:white;
   font-weight: normal;
   font-size: medium;
   display:block;
   padding: 5px;
   width:298px;
   height: 35px;
   border-top-style: solid;
   border-width: 1px;
   border-color:seagreen;
   border-collapse: collapse;
}
        </style>
        <script type="text/javascript" src="jquery.js"></script>
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
              PublishStatus pb=new PublishStatus();
              
              pb.setUnid(id);
               ArrayList<PublishStatus> pbls=pb.findAllStatus();
             //  System.out.println("in uerprofile.jsp");
              for(int i=0;i<pbls.size();i++)
                 {
                           
                %>  
                <div class="stts"><%=pbls.get(i).getContent()%> 
                </div>
                <%
                 }
             //  System.out.println("chk");
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
                     <a id="rs" href="SecondUserProfile.jsp?qid=<%=fls.get(i).getFriendid()%>">
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
                  Message msg=new Message();
                  msg.setReceiverid(id);
                 ArrayList<Message> msgs= msg.findAllMessages();
                 for(int i=0;i<msgs.size();i++)
                     {
                     
                     System.out.println(msgs.get(i).getMessage());
                       %> 
                <div class="MsgBox">
                    <%=msgs.get(i).getMessage()%>
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
                <div id="RequestHeader"><span id="Req">Your Request Box</span>
                    <img id="ReqClose" src="images/btn-delete.gif"></div>
                <div id="RequestList">
                    <div class="RequestList1">
                        <span id="Req">User Name</span>
                        <form class="ReqForm">
                            <input type="submit" value="Accept" title="Accept friend">
                            <input type="button" value="Decline" title="Decline friend">
                        </form>
                    </div>
                   
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

