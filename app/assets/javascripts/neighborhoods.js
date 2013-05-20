$(document).ready(function(){

  $('.shape').each(function(i){
    var total = parseInt($(this).attr("data-total"));
    if(total <= 2){
      $(this).css("fill", "#ffffff");
    }

    else if(total <= 39){
      $(this).css("fill", "#EFEFEF");
    }

    else if(total <= 177){
      $(this).css("fill", "#DCDDDD");
    }

    else if(total <= 247){
      $(this).css("fill", "#C9CACA");
    }

    else if(total <= 353){
      $(this).css("fill", "#B5B5B6");
    }

    else if(total <= 634){
      $(this).css("fill", "#9FA0A0");
    }

    else if(total <= 919){
      $(this).css("fill", "#727171");
    }
     
    else if(total <= 1161){
      $(this).css("fill", "#595757");
    }

    else if(total <= 1918){
      $(this).css("fill", "#3E3A39");
    }
    else{
      $(this).css("fill", "#231815");
    }
  });


  $('.shape').mouseover(function(){
    var id = $(this).attr('id');
    var zipcode_name = id.slice(1);
    shape_id = $(this).attr('id');
    $("#" + shape_id).css("fill", "#5df8b8");
    $('.intro').css("display", "block");
    var complaints = parseInt($(this).attr("data-total"));
    $('.intro').html("<h3>Zipcode " + zipcode_name +"</h3><br /><h4>This zipcode lodged " + $(this).attr("data-total") + " complaints in the last 3 years.<br/>Click on a zipcode on the map to see just how whiny this zipcode is." );
  });

  $('.shape').mouseleave(function(){
    var total = parseInt($(this).attr("data-total"));
    if(total <= 2){
      $(this).css("fill", "#ffffff");
    }

    else if(total <= 39){
      $(this).css("fill", "#EFEFEF");
    }

    else if(total <= 177){
      $(this).css("fill", "#DCDDDD");
    }

    else if(total <= 247){
      $(this).css("fill", "#C9CACA");
    }

    else if(total <= 353){
      $(this).css("fill", "#B5B5B6");
    }

    else if(total <= 634){
      $(this).css("fill", "#9FA0A0");
    }

    else if(total <= 919){
      $(this).css("fill", "#727171");
    }
     
    else if(total <= 1161){
      $(this).css("fill", "#595757");
    }

    else if(total <= 1918){
      $(this).css("fill", "#3E3A39");
    }
    else{
      $(this).css("fill", "#231815");
    }
     
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
