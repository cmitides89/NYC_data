// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
     $(".official_login").click(function(){
        $("#official_signin").fadeToggle();
  

      });
     $("#official_signin").hide();
     $("#official_signup").hide();

     var officialWrapper = $('#official_wrapper');
      var officialForm = officialWrapper.find('.officialform');



officialForm.click(function(){
     var currentForm = officialWrapper.find('.display');
     var otherForm = officialWrapper.find('.hide');
  
    console.log('click');
    currentForm.removeClass('display');
    currentForm.addClass('hide');

    otherForm.addClass('display');
    otherForm.removeClass('hide');
    
    $('.display').fadeIn(1500);
    $('.hide').fadeOut(300);

    console.log(currentForm);
    console.log(otherForm);
    });

});