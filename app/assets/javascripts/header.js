"use strict";

$(function () {
	
	var body = $('body');
	var navbar = $('div.navbar');
	var navList = $('ul.nav > li');
	var subMenu = $('ul.nav > li > ul > li');
	var logo = $('div.wrapper > p');
	var utility = $('ul.utility');
	var wrapper = $('div.wrapper');
	
	navList.hover(function () {
			$(this).find("ul").slideToggle(300);
		});
		
	subMenu.hover(function () {
		$(this).find("ul").slideToggle(300);
	});
	
	$(window).on("scroll", function () {
		// alert( $("ul#drop-menu").scrollTop() );
		if ( !body.hasClass('mid') && $(window).scrollTop() > 100 ) {
			body.toggleClass('high mid');

			wrapper.addClass('fixed-nav');
			logo.addClass('small-logo');

			navbar.addClass('center-nav');
			navbar.appendTo(wrapper);

			utility.toggleClass("fixed dropdown")
			utility.appendTo(wrapper);
		
			// alert( $("ul#drop-menu").scrollTop() );

		} else if ( !body.hasClass('high') && $(window).scrollTop() < 100 ) {
			body.toggleClass('mid high');

	 		wrapper.removeClass('fixed-nav');
	 		logo.removeClass('small-logo');

			navbar.removeClass('center-nav');
	 		navbar.insertAfter(wrapper);

	 		utility.toggleClass('fixed dropdown');
	 		utility.prependTo(wrapper);		
		}
	});
});