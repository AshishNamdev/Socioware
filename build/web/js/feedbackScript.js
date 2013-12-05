function isFieldEmpty()
{
    var txt=document.getElementsByClassName("text");
    for(var i=0;i<txt.length;i++)
        {
    if(txt[i].value=="")
        {
         alert("you Cant left any field empty.");
         return false;
        }
        }}
function Empty()
{
    var txt1=document.getElementById("t1");
           if(txt1.value=="Enter Your name")
               {
                   txt1.value="";
                   return false;
               }
    var txt2=document.getElementById("t2");
           if(txt2.value=="Contact Number")
               {
                   txt2.value="";
                   return false;
               }
                   var txt3=document.getElementById("t3");
           if(txt3.value=="Email-Id")
               {
                   txt3.value="";
                   return false;
               }
    var txt4=document.getElementById("t4");
           if(txt4.value=="Give your Feedback")
               {
                   txt4.value="";
                   return false;
               }

}
function validNumber()
{
    var num=document.getElementById(t2);
    if(num.length!=10)
        alert("enter valid number");
}