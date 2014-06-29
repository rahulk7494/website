$(document).ready(function ()
{
    $('#usr1').bind('mouseenter',function(){
     $('#u1').css("background-color","#ffffff");
    });
    
     $('#usr1').bind('mouseleave',function(){
     $('#u1').css("background-color","#f2f2f2");
    });
    
    /* Login window */
    $('#usr1').bind('click',function(){
       // alert('hy');
      $("#modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });
    });
    
    $('#usr2').bind('mouseenter',function(){
     $('#u2').css("background-color","#ffffff");
    });
    
     $('#usr2').bind('mouseleave',function(){
     $('#u2').css("background-color","#f2f2f2");
    });
    
    $('#usr3').bind('mouseenter',function(){
     $('#u3').css("background-color","#ffffff");
    });
    
     $('#usr3').bind('mouseleave',function(){
     $('#u3').css("background-color","#f2f2f2");
    });
    
    $('#usr4').bind('mouseenter',function(){
     $('#u4').css("background-color","#ffffff");
    });
    
     $('#usr4').bind('mouseleave',function(){
     $('#u4').css("background-color","#f2f2f2");
    });
    
    $('#usr5').bind('mouseenter',function(){
     $('#u5').css("background-color","#ffffff");
    });
    
     $('#usr5').bind('mouseleave',function(){
     $('#u5').css("background-color","#f2f2f2");
    });
    
    $('#usr6').bind('mouseenter',function(){
     $('#u6').css("background-color","#ffffff");
    });
    
     $('#usr6').bind('mouseleave',function(){
     $('#u6').css("background-color","#f2f2f2");
    });
    
    
});
