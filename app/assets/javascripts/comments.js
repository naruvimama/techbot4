$(document).ready(function(){
  $('#new_comment_form').bind("ajax:success", function(evt, data, status, xhr) {
  	console.log(data);
    if( data["success"]){
      console.log("Success");	
      $('#comment_comment').val("");
      $(".comments").append(ich.ich_comment(data));
    }
  });
});