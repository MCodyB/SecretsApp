$(function() {
	var secret = $("<li class='secret'> <ul class='secret-details'> <li class='recipient-name'><= j render(@secret.author_name) ></li> <li class='recipient-secret'> <= j render(@secret.title)> </li> </ul> </li>")
	$("#secrets-form:submit").on("click", function() {
		alert("something happened");
		$("#recieved-secrets").append(secret);
	});
});