$(document).ready(function() {
$('tr').each(function(i){
    var t = $(this);
    console.log(t);
    setTimeout(function(){ t.addClass('animation'); }, (i+1) * 400);
});




});