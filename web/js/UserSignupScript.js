

function invalid(){
    var fn=document.getElementById("t1");
     if(fn.value=="First Name"||fn.value=="Can't Be Empty")
      {
          fn.value="";
          fn.style.border="none";
          fn.style.color="black";
              return false;
      }
   
   var mn=document.getElementById("t2");
     if(mn.value=="Middle Name")
         {
             mn.value="";
            
             return false;
          }
          
   var ln=document.getElementById("t3");
     if(ln.value=="Last Name"||ln.value=="Can't Be Empty")
         {
             ln.value="";
          ln.style.border="none";
          ln.style.color="black";
             return false;
          }
   var email=document.getElementById("t4");
    if(email.value=="User Id"||email.value=="Can't Be Empty")
      {
          email.value="";
          email.style.border="none";
          email.style.color="black";
          
          return false;
      }
      var pwd=document.getElementById("p1");
      var msg=document.getElementById("p");
    if(pwd.value=="password"||msg.innerHTML=="Can't Be Empty")
      {
          pwd.value="";
          pwd.style.border="none";
          pwd.style.color="black";
          msg.innerHTML="";
          return false;
      }
    var cpw=document.getElementById("p2");
     var msg=document.getElementById("cp");
  if(cpw.value=="password"||msg.innerHTML=="Can't Be Empty")
      {
          cpw.value="";
          cpw.style.border="none";
          cpw.style.color="black";
          msg.innerHTML="";
          return false;
      }
 var altr=document.getElementById("t5");
   if(altr.value=="Email-Id")
      {
          altr.value="";
          return false;
      }
        
   var city=document.getElementById("t6");
   if(city.value=="Where U Live?")
      {
          city.value="";
          return false;
      }
       var cno=document.getElementById("t7");
   if(cno.value=="Your number")
      {
          cno.value="";
          return false;
      }
      var ans1=document.getElementById("t9");
   if(ans1.value=="your Answer"||ans1.value=="Can't Be Empty")
      {
          ans1.value="";
          ans1.style.border="none";
          ans1.style.color="black";
          return false;
      }
      var ans2=document.getElementById("t11");
   if(ans2.value=="your Answer"||ans2.value=="Can't Be Empty")
      {
          ans2.value="";
          ans2.style.border="none";
          ans2.style.color="black";
          return false;
      }
      return true;
       }
       
       
   function isEmptyField()
{
    var fn=document.getElementById("t1");
     if(fn.value=="First Name"||fn.value=="Can't Be Empty"||fn.value==""){
       fn.style.border="ridge";
       fn.style.borderColor="red";
       fn.style.color="red";
       fn.value="Can't Be Empty";
        return false;
    }
   
    var ln=document.getElementById("t3");
     if(ln.value=="Last Name"||ln.value=="Can't Be Empty"||ln.value==""){
       ln.style.border="ridge";
       ln.style.borderColor="red";
       ln.style.color="red";
       ln.value="Can't Be Empty";
        return false;
    }
     var em=document.getElementById("t4");
     if(em.value=="User Id"||em.value=="Can't Be Empty"||em.value==""){
       em.style.border="ridge";
       em.style.borderColor="red";
       em.style.color="red";
       em.value="Can't Be Empty";
        return false;
    }
     var pwd=document.getElementById("p1");
     var msg=document.getElementById("p");
     if(pwd.value=="password"||pwd.value==""){
       pwd.style.border="ridge";
       pwd.style.borderColor="red";
       pwd.style.color="red";
       msg.innerHTML="Can't Be Empty";
       
        return false
    }
      var cpwd=document.getElementById("p2");
     var msg=document.getElementById("cp");
    
     if(cpwd.value=="password"||cpwd.value==""){
       cpwd.style.border="ridge";
       cpwd.style.borderColor="red";
       cpwd.style.color="red";
       msg.innerHTML="Can't Be Empty";
       
        return false
    }
     
    var mm=document.getElementById("mm");
    var dd=document.getElementById("dd");
    var yyyy=document.getElementById("yyyy");
    var dob=document.getElementById("dob");
    if(dd.value=="Date"||mm.value=="month"||yyyy.value=="Year"){
        dd.style.border="ridge";
        dd.style.borderColor="red";
        mm.style.border="ridge";
        mm.style.borderColor="red";
        yyyy.style.border="ridge";
        yyyy.style.borderColor="red";
        dob.innerHTML="Please Select Your DOB";
        dob.style.color="red";
        return false;
    }
    
    var gndr=document.getElementById("gen");
    var gn=document.getElementById("gndr");
    if(gndr.value=="Gender"){
        gndr.style.border="ridge";
        gndr.style.borderColor="red";
        gn.innerHTML="Please Select Your Gender";
        return false;
    }
    
    var cntry=document.getElementById("habi");
    var cty=document.getElementById("city");
    if(cntry.value=="Country"){
        cntry.style.border="ridge";
        cntry.style.borderColor="red";
        cty.innerHTML="Please Select Your Country where You Live";
        return false;
    }
    
    var bg=document.getElementById("bg");
    var bmsg=document.getElementById("bmsg");
    if(bg.value=="Select"){
        bg.style.border="ridge";
        bg.style.borderColor="red";
        bmsg.innerHTML="Select Your Blood Group";
        return false;
    }
    
    var sq1= document.getElementById("sq1");
    var sqm1=document.getElementById("sqm1");
    if(sq1.value=="Select your Security Question"){
        sq1.style.border="ridge";
        sq1.style.borderColor="red";
        sqm1.innerHTML="Select Your First Sequrity Question.";
        return false;
        
    }
    var sq2= document.getElementById("sq2");
    var sqm2=document.getElementById("sqm2");
    if(sq2.value=="Select your Security Question"){
        sq2.style.border="ridge";
        sq2.style.borderColor="red";
        sqm2.innerHTML="Select Your secondSequrity Question.";
        return false;
        
    }
    var ans1=document.getElementById("t9");
 
     if(ans1.value=="your Answer"||ans1.value=="Can't Be Empty"||ans1.value=="")
     {
       ans1.style.border="ridge";
       ans1.style.borderColor="red";
       ans1.style.color="red";
       ans1.value="Can't Be Empty";
        return false
    }
    var ans2=document.getElementById("t9");

     if(ans2.value=="your Answer"||ans2.value=="Can't Be Empty"||ans2.value==""){
       ans2.style.border="ridge";
       ans2.style.borderColor="red";
       ans2.style.color="red";
       ans2.value="Can't Be Empty";
        return false
    }
    
      
     
      
  /*   var mn=document.getElementById("t2");
    if(t2.value=="Middle Name"){{
            t2.value="";
        }
}*/
   return true;
}

function changeOnSelect(){
    
    var mm=document.getElementById("mm");
    var dd=document.getElementById("dd");
    var yyyy=document.getElementById("yyyy");
    var dob=document.getElementById("dob");
    dd.style.border="none";
    mm.style.border="none";
    yyyy.style.border="none";
    dob.innerHTML="";
    
    var gndr=document.getElementById("gen");
    var gn=document.getElementById("gndr");
    gndr.style.border="none";
    gn.innerHTML="";
    
    var city=document.getElementById("habi");
    var cty=document.getElementById("city");
    city.style.border="none";
    cty.innerHTML="";
    
      var bg=document.getElementById("bg");
    var bmsg=document.getElementById("bmsg");
    bg.style.border="none";
    bmsg.innerHTML="";
    
    
    var sq1= document.getElementById("sq1");
    var sqm1=document.getElementById("sqm1");
    sq1.style.border="none";
    sqm1.innerHTML="";
    
    
    var sq2= document.getElementById("sq2");
    var sqm2=document.getElementById("sqm2");
    sq2.style.border="none";
    sqm2.innerHTML="";
    return false;
    
}

function isValidNo(){
   var mno=document.getElementById("t7").value;
   if(mno.length<10 ||mno.length>10)
{
alert("Please Enter a Valid 10 Digit Mobile  no.");
       return false;
    }
for(var i=0;i<10;i++)
{
    if(mno.charCodeAt(i)<48 ||mno.charCodeAt(i)>57)
  {
     alert("Please Enter Only Digits in Mobile Number");
     return false;
     }
    
}
   return true;
}

function isValidPwd(){
     var pwd=document.getElementById("p1");
      var cpwd=document.getElementById("p2");
      if(pwd.length!=cpwd.length||pwd.value!=cpwd.value){
          alert("Passwords Do No Match");
             }
      
}