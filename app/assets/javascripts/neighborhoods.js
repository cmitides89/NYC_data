$(document).ready(function(){

  $('.shape').mouseover(function(){
    var id = $(this).attr('id');
    var zipcode_name = id.slice(1);
    shape_id = $(this).attr('id');
    $("#" + shape_id).css("fill", "#5df8b8");
    $('.intro').css("display", "block");
    $('.intro').html("<h3>Zipcode " + zipcode_name +"</h3>");
  });

  $('.shape').mouseleave(function(){
     $(this).css("fill", "white");
     $('.intro').html("<h3>Click on a zipcode on the map for more info</h3>");
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
