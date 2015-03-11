$(document).ready(function() {

	$("#post-creation").on("submit", function(event){
		var url = "/ajaxpost";
		var data = $(this).serialize();
		event.preventDefault();

		$.ajax({
			url: url,
			data: data,
			type: "POST",
			success: function(response){
				$('p').append('<a href= "#" >' + response + '</a><br>');
			}
		})

	});

});
