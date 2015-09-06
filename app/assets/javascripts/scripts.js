$(document).ready(function(){

	alert("qeqweqwe");

	$("input").on("change",function(){
		alert("czxczxczx");
	});

	$("form").on("change","#filter-posts input",function(){
		$("#filter-posts").submit();
		alert("asdasd");
	});

});