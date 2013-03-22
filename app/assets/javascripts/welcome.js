$('.tile').click(function(event) {
	var div = $(this);
	var href = div.attr("data-href");
	self.location=href;
});