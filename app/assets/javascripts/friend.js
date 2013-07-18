$(document).ready(function() {
	$("li.friend-button").on('click', function(event) {
		$(this).toggleClass('button-friended friend-button');
		$(this).find("form.friend-form:hidden").submit();
	});
	
	$("li.button-friended").on('click', function(event) {
		$(this).toggleClass('button-friended friend-button');
		$(this).find("form.unfriend:hidden").submit();
	});
});