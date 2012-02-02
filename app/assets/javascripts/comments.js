$(document).ready(function(){
  comment_form = $('#new_comment_form');
  comment_form.bind("ajax:success", function(evt, data, status, xhr) {
    if( data["success"]){
      $('#comment_content').val("");
      $(".comments").append(ich.ich_comment(data));
    }
  });
});