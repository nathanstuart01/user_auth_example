$(document).ready( function() {
  $('.flash').click( function() {
    $(this).slideToggle();
  });

  $(.'flash').('show')(function() {
    var $flash = $(this);
    
    setTimeout( function() {
      $flash.slidetoggle();
    }, 5000);
  })
});
