;$(document).ready(function(){

	$("#menu_ck").prop('checked',false);
	$(".nav-btns-resp").hide();

	$("#filter-posts").on("change","input",function(){
		$("#filter-posts").submit();
	});

	$("#filter-portfolios").on("change","input",function(){
		$("#filter-portfolios").submit();
	});

	$(".send-filter-posts").on("click",function(){
		$("#cat-filter-posts").submit();
	});

	$(".menu_lb").on("click",function(){
		if ( $("#menu_ck").prop("checked") ) {
			$(".nav-btns-resp").hide();
		} else {
			$(".nav-btns-resp").show();
		};
	});

});