$(document).ready(function(){
  $('#new_comment_form').bind("ajax:success", function(evt, data, status, xhr) {
    if( data["success"]){
      $('#comment_comment').val("");
      $(".comments").append(ich.ich_comment(data));
    }
  });
});