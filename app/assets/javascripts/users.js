$(document).ready(function() {
	
     $(".login").click(function(){
        $("#signin").toggle();
     });

     $('#signin').hide();
     $('.register').hide();

     
     var formWrapper = $('#form_wrapper');

     var linkForm = formWrapper.find('.linkform');

  


linkForm.click(function(){
	 var currentForm = formWrapper.find('.active');
     var otherForm = formWrapper.find('.inactive');
  
   	console.log('click');
    currentForm.removeClass('active');
    currentForm.addClass('inactive');

    otherForm.addClass('active');
    otherForm.removeClass('inactive');
	
    $('.active').fadeIn(1500);
    $('.inactive').fadeOut(300);

    console.log(currentForm);
    console.log(otherForm);
	});

});