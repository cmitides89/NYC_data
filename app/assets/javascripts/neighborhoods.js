$(document).ready(function(){

      $('.shape').mouseover(function(){
        var id = $(this).attr('id');
        var zipcode_name = id.slice(1);
        // $('.shape').css({fill:#5df8b8;})
        shape_id = $(this).attr('id');
        console.log($(shape_id));
        $("#" + shape_id).css("fill", "#5df8b8");
        $('.intro').css("display", "block");
        $('.intro').html("<p>Go to </p>" + zipcode_name);

      });

      $('.shape').mouseleave(function(){
        console.log("you left a zip");
         $('.shape').css("fill", "white");
         $('.intro').css("display", "none");
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
      link.attr('title', zipcode_name);
  });

    });
