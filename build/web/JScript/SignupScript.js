function isFieldEmpty()
{
    var txt=document.getElementsByClassName("txtarea");
    for(var i=0;i<txt.length;i++)
        {
    if(txt[i].value=="")
        {
         alert("you Cant left any field empty.");
         return false;
        }
        }
}
function empty(){
    var fn=document.getElementById("t1");
     if(fn.value=="First Name")
      {
          fn.value="";
          return false;
      }
   var ln=document.getElementById("t2");
     if(ln.value=="Last Name")
         {
             ln.value="";
             return false;
          }
   var email=document.getElementById("t3");
    if(email.value=="User Id")
      {
          email.value="";
          return false;
      }
      var pwd=document.getElementById("p1");
    if(pwd.value=="password")
      {
          pwd.value="";
          return false;
      }
    var cpw=document.getElementById("p2");
  if(cpw.value=="password")
      {
          cpw.value="";
          return false;
      }
 var altr=document.getElementById("e1");
   if(altr.value=="Email-Id")
      {
          altr.value="";
          return false;
      }
   
       }