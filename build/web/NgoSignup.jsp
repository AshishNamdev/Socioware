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
        <title>Socioware/NgoSignUp</title>
        <link href="style/NgoSignup.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/UserSignupScript.js">
            
        </script>
        
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript">
           $(document).ready(function(){
                 $("#bridge0,#").eq(2).addClass("active");
    $(".prc .dv").eq(2).show();

    $(".prc h3").click(function(){
          $(this).next(".dv").slideToggle("slow")
           .siblings("p:visible").slideUp("slow");
           $(this).toggleClass("active");
           $(this).sibling("h3").removeClass("active");
});
           });

        </script>
    </head>
    <body id="bd">
        <jsp:include page="Header.html"></jsp:include>
        <div id="main">
            <div id="sign">SignUpForm!</div>
            <span id='msg'></span>
            <div id="bridge0" class="bridge">&nbsp;&nbsp;&nbsp;Step 1</div>
            <div id="div1">
                <form action="NgoSignupServlet" method="post"> 
                <table id="tbl" cellspacing="0" cellpadding="3" margin="0" >
               
                      <tr>
                      <br/><br/><br/>    <th>Ngo Name   <span class="star">*</span>    </th>
                         <td><input type="text" id="t1" value="Ngo Name" class="txtarea" name="fname" onfocus="return invalid()"/>
</tr>
                      <tr>
                         <th></th>
                         <td id="txt">Please enter a valid name to be a member</td>
                     </tr>
                      <tr>
                         <th>Email-id <span class="star">*</span></th>
                         <td><input type="text" id="t4" class="txtarea" value="Ngo Id" name="email" onfocus="return invalid()"/>
                         @
                           <select id="sel" name="host">
                              <option value="other">Other</option>
                              <option value="gmail.com" selected>gmail.com</option>
                              <option value="yahoo.com">yahoo.com</option>
                              <option value="rediffmail.com">rediffmail.com</option>
                              <option value="hotmail.com">hotmail.com</option>
                           </select>
                        </td>
                        
                      </tr>
                      <tr>
                         <th></th>
                         <td id="txt">Please select a valid user name to login</td>
                     </tr>
                      <tr>
                           <th>Password   <span class="star">*</span></th>
                           <td><input type="password" value="password" class="txtarea" id="p1" name="pwd"  onfocus="return invalid()"/>
                           <span class="spn" id="p"></span>
                           </td>
                      </tr>
                      <tr>
                         <th></th>
                         <td id="txt">(minimum 6 words)<br/>
                             select a valid and unique password must use<br/>
                             combination of alphabets, digits and symbol
                         </td>
                     </tr>
                      <tr>
                           <th>Confirm Password<span class="star">*</span>  </th>
                           <td><input type="password" value="password" class="txtarea" id="p2" name="cpwd" onblur="return isValidPwd()"  onfocus="return invalid()"/>
                            <span class="spn" id="cp"></span></td>
                      
                      </tr>
                      <tr>
                         <th></th>
                         <td id="txt">Confirm Password</td>
                     </tr>
                      <tr>
                           <th>Estd Date <span class="star">*</span></th>
                           <td>
                               <select id="yyyy" name="yyyy" onchange="return changeOnSelect()">
                                   <option value="Year" selected>Year</option>
                                   <option value="2012">2012</option>
                                   <option value="2011">2011</option>
                                   <option value="2010">2010</option>
                                   <option value="2009">2009</option>
                                   <option value="2008">2008</option>
                                   <option value="2007">2007</option>
                                   <option value="2006">2006</option>
                                   <option value="2005">2005</option>
                                   <option value="2004">2004</option>
                                   <option value="2003">2003</option>
                                   <option value="2002">2002</option>
                                   <option value="2001">2001</option>
                                   <option value="2000">2000</option>
                                   <option value="1999">1999</option>
                                   <option value="1998">1998</option>
                                   <option value="1997">1997</option>
                                   <option value="1996">1996</option>
                                   <option value="1995">1995</option>
                                   <option value="1994">1994</option>
                                   <option value="1993">1993</option>
                                   <option value="1992">1992</option>
                                   <option value="1991">1991</option>
                                   <option value="1990">1990</option>
                                   <option value="1989">1989</option>
                                   <option value="1988">1988</option>
                                   <option value="1987">1987</option>
                                   <option value="1986">1986</option>
                                   <option value="1985">1985</option>
                                   <option value="1984">1984</option>
                                   <option value="1983">1983</option>
                                   <option value="1982">1982</option>
                               </select>
                               <span class="spn" id="dob"></span>
                           </td>
                      </tr>
                      <tr>
                         <th></th>
                         <td id="txt">fill your Established year</td>
                     </tr>
                       <tr>
                           <th>Gender <span class="star">*</span></th>
                           <td>
                               <select id="gen" name="gndr" onchange="return changeOnSelect()">
                                   <option value="Gender" selected>Gender</option>
                                   <option value="male">Mr.</option>
                                   <option value="female">Miss.</option>
                               </select>
                               <span class="spn" id="gndr"></span>
                           </td>
                       </tr>
                       <tr>
                           <th>Habitate  <span class="star">*</span></th>
                           <td>
                               <select id="habi" name="cntry" onchange="return changeOnSelect()">
                                   <option selected>Country</option>
                                   <option>India</option>
                                   <option>Austrailla</option>
                                   <option>US</option>
                                   <option>Britain</option>
                                   <option>America</option>
                                   <option>Pakistan</option>
                                   <option>Iran</option>
                                   <option>Srilanka</option>
                                   <option>Nepal</option>
                                   <option>China</option>
                                   <option>Japan</option>
                                   <option>France</option>
                                   <option>Russ</option>
                                   <option>Iraq</option>
                                   <option>Taibaan</option>
                                   <option>England</option>

                               </select>
                               <span class="spn" id="city"></span>
                           </td>
                       </tr>
                       <tr>
                         <th></th>
                         <td id="txt">Choose your native</td>
                     </tr>
                       <tr>
                           <th>Alternate Email </th>
                            <td><input type="text" id="t5" class="txtarea" value="Email-Id" name="remail" onfocus="return invalid()"/>
                         @
                           <select id="sel" name="rhost">
                              <option value="other">Other</option>
                              <option value="gmail.com" selected>gmail.com</option>
                              <option value="yahoo.com">yahoo.com</option>
                              <option value="rediffmail.com">rediffmail.com</option>
                              <option value="hotmail.com">hotmail.com</option>
                           </select>
                        </td>
                       </tr>
                       <tr>
                         <th></th>
                         <td id="txt">(recommended)<br/>
                             fill this box with a valid Email-Id which we use<br/>
                             in case to damage to your regular Email-Id<br/><br/>
                             
                         </td>
                     </tr>
                       
                    </table>
            </div>
            <div id="bridge" class="bridge">&nbsp;&nbsp;&nbsp;step 2</div>
            <div id="div2">
               
                                   <table id="tbl2"  cellspacing="1" cellpadding="8" margin="0" width="550">
                           
                           <tr>
                               <th>City</th>
                               <td><input name="city" type="text" id="t6" value="Where U Live?" title="Enter your city" onfocus="return invalid()"/></td>
                               <td colspan="2" align="right"><span class="spn" id="bmsg"></span></td>    
                           </tr>
                           <tr>
                               <th>Call Me</th>
                           
                         
                               <td><input type="text" id="t7" name="cno" value="Your number" title="Call me At" onblur="return isValidNo()"  onfocus="return invalid()"/></td>
                               <th align="left">Blood Group  <span class="star">*</span></th>
                               <td>
                                   <select name="bg" id="bg" title="Pick your Blood Group" onchange="return changeOnSelect()">
                                       <option name="">Select</option>
                                       <option name="A+">A+</option>
                                       <option name="B+">B+</option>
                                       <option name="O+">O+</option>
                                       <option name="AB+">AB+</option>
                                       <option name="A-">A-</option>
                                       <option name="B-">B-</option>
                                       <option name="O-">O-</option>
                                       <option name="AB-">AB-</option>
                                   </select> 
                                  
                               </td>
                           </tr>
                       
                          
                           <tr>
                               <th>
                                   Ouestions N<span class="star">*</span> Answers  
                               </th>
                               <td>
                                   <Select  id="sq1" name="sq1" onchange="return changeOnSelect()">
                                       <option>Select your Security Question</option>
                                       <option>Write your own Question</option>
                                       <option>Who is your best Friend?</option>
                                       <option>Who is your first teacher?</option>
                                       <option>Which is your favourite color?</option>
                                       <option>Who do you like most?</option>
                                       <option>what is your father,s name?</option>
                                       <option>what is your mother's name?</option>
                                       <option>Who is your favourite animal?</option>
                                       <option>Which is your first School?</option>
                                   </Select>
                                 
                                    <span class="spn" id="sqm1"></span>
                               </td>

                               <td><input type="text"  id="t8" disabled value="Your Question" title="Write your own Question" onfocus="return invalid()"/></td>

                               <td><input name="ans1" type="text" id="t9"  value="your Answer" title="Write your Question" onfocus="return invalid()"/></td>
                          
                           </tr>
                           
                           <tr>
                               <th>
                                   Ouestions N<span class="star">*</span>  Answers 
                               </th>
                               <td>
                                   <Select  id="sq2" name="sq2" onchange="return changeOnSelect()">
                                       <option>Select your Security Question</option>
                                       <option>Write your own Question</option>
                                       <option>Who is your best Friend?</option>
                                       <option>Who is your first teacher?</option>
                                       <option>Which is your favourite color?</option>
                                       <option>Who do you like most?</option>
                                       <option>what is your father,s name?</option>
                                       <option>what is your mother's name?</option>
                                       <option>Who is your favourite animal?</option>
                                       <option>Which is your first School?</option>
                                   </Select>
                                   <span class="spn" id="sqm2"></span>
                               </td>

                               <td><input type="text"  id="t10" disabled value="Your Question" title="Write your own Question" onfocus="return invalid()"/></td>

                               <td><input name="ans2" type="text" id="t11"  value="your Answer" title="Write your Question" onfocus="return invalid()"/></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td align="center"><input type="submit" value="Submit"  title="Click to register your self" onclick="return isEmptyField()"/></td>
                               <td align="center"><input type="reset" id="r1" value="Re-fill" title="Re-fill the form" name="reset"></td>
                       </tr>
                           
                                   </table>
                </div>
                 
                    </form>
            </div>
        
        <jsp:include page="Footer.html"></jsp:include>
    </body>
</html>

