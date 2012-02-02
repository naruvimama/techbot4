(function($){
	$('#feedback').hide().removeClass("hidden");
	$("#feedback-btn").live("mouseover",function(){
		$('#feedback').show(500);
		$(this).hide();
		$('#feedback').css({'z-index':1000});
	});
	$('#feedback .cancel').live("click",function(){
		$('#feedback-btn').show(500);
		$('#feedback').hide();
		$('#feedback').css({'z-index':-1});
	});
	
	$("")
})(jQuery);