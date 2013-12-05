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
        <title>Socioware/UserProfile</title>

        <style>
            span2{
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
 
            #close:hover{
                cursor: pointer;
           }
            #EventTab{
                z-index: +1;
                position: absolute;
                left: 1400px;
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
               <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("a").hover(
                function(){$(this).css("color","#32CD32").css("text-decoration","underline");},
                function(){$(this).css("color","white").css("text-decoration","none");
                });
                $(".l,.li2,.li3").hover(
                function(){$("ul",this).fadeIn("slow");},
                function(){$("ul",this).fadeOut("fast");
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
               $("#CreateIssue").click(
                function(){$("#disableHeader").css("display","block");});
              
               $("#CreateIssue").click(
                function(){$("#disableFooter").css("display","block");});
              
              $("#CreateIssue,").click(
                function(){$("#disable").css("display","block");});
              
               $("#Iclose").click(
                function(){$("#disableFooter").css("display","none");

               });
                $("#Iclose").click(
                function(){$("#disableHeader").css("display","none");

               }); $("#Iclose").click(
                function(){$("#disable").css("display","none");

               });
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
       
        </div>
        <div id="disableHeader"></div>
        <div id="disableFooter"></div>
        <div id="disable"></div>
                    
        <jsp:include page="Footer1.html"></jsp:include>

    </body>

</html>
