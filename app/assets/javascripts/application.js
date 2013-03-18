// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require fancybox

$(document).ready(function() {

	$(".fancybox").fancybox({
		openEffect	: 'fade',
		closeEffect	: 'fade'
	});
	
	jQuery.ias({
		container : '#content',
		item: 'div.view',
		pagination: 'div.navigation',
		next: 'div.navigation p.next a',
		noneleft: 'There is no more photos to display!'
	});

});