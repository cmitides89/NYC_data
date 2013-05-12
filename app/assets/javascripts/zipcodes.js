$(document).ready(function() {
$('tr').each(function(i){
    var t = $(this);
    console.log(t);
    setTimeout(function(){ t.addClass('animation'); }, (i+1) * 400);
});

	
     $("#complaint").click(function(){
        $("#complaint_form").slideToggle();
  

      });
     $("#complaint_form").hide();

});