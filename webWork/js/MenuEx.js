/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
$("a").hover(
function(){$(this).css("color","green");},
function(){$(this).css("color","white");}
  );

$("li").hover(
function(){$(".ul3",this).fadeIn("slow")},
function(){$(".ul3",this).fadeOut("slow")}
);

$("#subop23").hover(
function(){$(".ul4",this).fadeIn("fast")},
function(){$(".ul4",this).fadeOut("fast")}
);
});