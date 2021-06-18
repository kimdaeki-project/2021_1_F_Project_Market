/**
 * 
 */

$(document).ready(function() {

	var goodval = ${good};

	if (goodval>0) {
		console.log(goodval);
		$("#good").prop("src", "/resources/images/빨강.png");
		$(".good").prop('name', goodval);
	} else {
		console.log(goodval);
		$("#good").prop("src", "/resources/images/검정.png");
		$(".good").prop('name', goodval);
	}

	$(".good").on("click", function() {
			var that = $(".good");
			var sendData = {'socialNum' : '${socialVO.socialNum}', 'good' : that.prop('name')};
		$.ajax({
			url : '/social/good',
			type : 'POST',
			data : sendData,
			success : function(data) {
				that.prop('name', data);
				if (data == 1) {
					$("#good").prop("src", "/resources/images/빨강.png");
				} else {
					$("#good").prop("src", "/resources/images/검정.png");
				}

			}
		});
	});
});
