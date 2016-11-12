// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  $('body > a').on('click', function(event){
      event.preventDefault();
      var link = $(this).attr('href');
      $.ajax({
        url: link,
        method: 'GET',
        data:{},
        dateType:'json'
      }).done(function(response){
        $('.pokemon-box ').appendTo(response);
      });
  });
});
