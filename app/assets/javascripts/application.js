//= require jquery
//= require jquery_ujs
//= require fancybox

$(document).ready(function() {

	$(".fancybox").fancybox({
		openEffect	: 'fade',
		closeEffect	: 'fade',
		preload : 'false'
	});
	
	jQuery.ias({
		container : '#content',
		item: 'div.view',
		pagination: 'div.navigation',
		next: 'div.navigation p.next a',
		noneleft: 'There is no more photos to display!'
	});

	$("#cat_form select").on("change", function() { $(this).closest("form").submit(); });

});
