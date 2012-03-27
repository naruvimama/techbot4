$(document).ready(
  function($){
    $('.classified-spread .nav-tabs .cl-head a').on('click', function(evnt){
      ads = $(this).attr('data-cl-items')
      $('.classified-area').html(ads)
    });
  }
);
