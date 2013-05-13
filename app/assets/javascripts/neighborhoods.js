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

  //Run this on page load
    //for every element with class shape
  $('.shape').each(function(i){
      //get polygon id
      var id = $(this).attr('id');
      //append an alt tag to that specific element with that element's zipcode
      var link = $(this).parent();
      //strip out z in id
      var zipcode_name = id.slice(1);
      link.attr('alt', zipcode_name);
  });