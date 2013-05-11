$(document).ready(function(){

      $('.shape').mouseover(function(){
        // $('.shape').css({fill:#5df8b8;})
        shape_id = $(this).attr('id');
        console.log($(shape_id));
        $("#" + shape_id).css("fill", "#5df8b8");

      });
      $('.shape').mouseleave(function(){
        console.log("you left a zip");
         $('.shape').css("fill", "white");
      });
    });