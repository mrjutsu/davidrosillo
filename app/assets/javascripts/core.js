;$(document).ready(function(){

	$("#filter-posts").on("change","input",function(){
		$("#filter-posts").submit();
	});

	$(".send-filter-posts").on("click",function(){
		$("#cat-filter-posts").submit();
	});

});