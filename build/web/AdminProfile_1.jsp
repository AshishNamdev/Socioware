<%-- 
    Document   : AdminProfile
    Created on : Mar 28, 2012, 11:46:32 PM
    Author     : Vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Socioware/AdminProfile</title>
 

        <style>
#span2{
    position: relative;
    left:5px;
    top: 55px;
    font-family: Broadway;
    text-decoration: underline;
    font-size: xx-large;
    color:turquoise;
    
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
    margin-left: 1210px;
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
#main{
    margin-left: 10px;
    position: absolute;
    z-index: -1;
    
}
        </style>
        <style>
            #CreateDisc{
                position: absolute;
                top: 80px;
                left: 448px;
                width: 403px;
                height: 154px;
                border: 1px turquoise ridge;
                background: #556B2F ;
}
#txarea1{
    margin-top: -18px;
    margin-left: 1px;
}
#txarea{
    margin-top: 20px;
    
    margin-left: 1px;
}
#disc{
    color: whitesmoke;
    font: bold large Baskerville Old Face;
    margin-top: 0px;
    border: 1px ridge;
    border-bottom-color: turquoise;
}
        </style>
        <style>
            #OtherAdm{
                     width: 200px;
                     border: 1px solid turquoise;
                     margin-top: 100px;
                     margin-left: 20px;
                     background-color: #556B2F;
}
#OtherAdm h3, #Report h3{
    background: silver url("images/arrow-square.gif") no-repeat  right -51px;
    margin: 0px;
     color: sienna;
}
#OtherAdm h3:hover,#Report h3:hover{
    background-color: whitesmoke;
    cursor: pointer;
 color: coral;
}
#OtherAdm h3.active,#Report h3.active{
    background-position: right 5px;
}
#OtherAdm p,#Report p{
  
    color: white;
    font-weight: bold;
    margin-left: 15px;
    margin: 0px;   
}
#OtherAdm p:hover,#Report p:hover{
    color: thistle;
    cursor: pointer;
}
        </style>
        <style>
            #Say{
                position: absolute;
                top: 350px;
                left: 448px;
                width:403px;
                height:94px;
                border: 1px turquoise solid;
                background-color:#556B2F;
           
           }
           .sp:hover{
               color: tomato;
               cursor:pointer;
}
        </style>
        <style>
            #Report{
                position: absolute;
                left:950px;
                top:85px;
                width:250px;
                height: 250px;
                background-color: #556B2F;
                border: 1px turquoise solid;
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
                  $("#OtherAdm h3").eq(2).addClass("active");
                  $("#OtherAdm p").eq(2).show();

    $("#OtherAdm h3").click(function(){
          $(this).next("p").slideToggle("slow")
           .siblings("p:visible").slideUp("slow");
           $(this).toggleClass("active");
           $(this).sibling("h3").removeClass("active");
});
                 
            });
        </script>
    </head>
    <body id="bd">
         <div id="dv1">
            <span id="span1">Socioware<sub id="sub1">B social B Realstic</sub></span>
            <input id="ip1" type="text" size="40"><a id="a1" href="#">&nbsp;&nbsp;Find&nbsp;&nbsp;</a>
            <ul>
                
                <li class="l"><a id="a2" href="LogoutServlet">LogOut</a></li>
            </ul>
        </div>

        <div id="main">
        <span id="span2">Welcome Admin</span>
        <div id="OtherAdm">
            <h3>Other Admins</h3>
            <p>Ashish Namdev<br/><br/>
            Anoop Tiwari<br/><br/>
            Vivek Jain</p>

        </div>
        <div id="CreateDisc">
            <p id="disc">Create Discussion</p>
            <form>
                <th>Discussion name  :    </th><td><input type="text" id="DiscName" title="Give a name to your discussion"></td>
            <textarea id="txarea"rows="3" cols="47" >Put your Description</textarea>
            <td class="btn"><button title="publish this Discussion" name="publish">Launch</button>
                <button title="Cancel this Discussion" name="Cancel">Cancel</button></td>
            </form></div>
        <div id="Say">
            <p id="disc"><span class="sp">Add Photo</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sp">Add Video</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sp">Add Text</span></p>
            <textarea id="txarea1"rows="3" cols="47" >Put your Description</textarea>
            <td class="btn"><button title="publish this Discussion" name="publish">Launch</button>
                <button title="Cancel this Discussion" name="Cancel">Cancel</button></td>
        </div>
        <div id="Report">
            <h3>Reports</h3>
            <p>Sensitive status</p><br/><br/>
            <p>Sensitive images</p><br/><br/>
            <p>Sensitive videos</p><br/><br/>
            <p>Feedback Reports</p>
        </div>
        </div>
    <jsp:include page="Footer.html"></jsp:include>

    </body>

</html>
