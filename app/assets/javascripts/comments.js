// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

$('body').bind('ajax:success', function(e, data) {
	console.log(data);
	var itemId = $('<div>').append(data).children().first().data("zipcode-id");

	console.log(itemId)


	$('.new-comment'+ itemId).append(data);

		});

$("#new-comment").click(function () {
   $(this).next().slideToggle();

});

});