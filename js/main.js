$(document).ready(function() {

	/**
	 * Resize text in "Max Chadwick Object" based on the window width
	 */
	var windowWidth, fontSize;
	
	function fitMaxChadwickObject() {
		windowWidth = window.innerWidth;
		if(windowWidth < 670) {
			fontSize = windowWidth / 30;
		} else if(windowWidth >= 670 && windowWidth < 800) {
			fontSize = '23px';
		} else if(windowWidth >= 800 && windowWidth < 1000) {
			fontSize = windowWidth / 50;
		} else {
			fontSize = '20px';
		}
		$('#max-chadwick-object').css('font-size', fontSize);
	}

	fitMaxChadwickObject();
	
	$('#max-chadwick-object').css('visibility', 'visible'); 

	$(window).resize(function() {
		fitMaxChadwickObject();
	})


	/** 
	 * Responsive Nav Functionality 
	 */
	$('#nav-toggle').click(function() {
		$('.nav-link').toggleClass('display-none-link');
		if($('.nav-link').hasClass('display-none-link')) {
			$(this).css('margin-bottom', '0px');
		} else {
			$(this).css('margin-bottom', '1em');
		}
	})
	/**
	 * Replace SVG with JPG if necessary
	 */
	 if(!Modernizr.svg) {
	 	$('#logo').attr('src', '/img/dist/logo.jpg')
	 }

})