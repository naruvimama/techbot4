$(document).ready(
	function($){
	  $('#feedback').hide().removeClass("hidden");
	  $("#feedback-btn").live("click",function(){
		$('#feedback').show(500);
		$(this).hide();
		$('#feedback').css({'z-index':1000});
	});
	$('#feedback .cancel').live("click",function(){
		$('#feedback-btn').show(500);
		$('#feedback').hide();
		$('#feedback').css({'z-index':-1});
		return false;
	});
	$('#feedback form .submit').live('click', function(){
		$('#feedback form .submit').css("disabled", true);
		setTimeout(function(){$('#feedback form .submit').css("disabled", false);},2000);
	});
	$('#feedback form').bind("ajax:success", function(evt, data, status, xhr) {
      if( data["success"]){	
        $('#feedback #info').val("");
        $('#feedback .cancel').trigger("click");
      }
    });
});