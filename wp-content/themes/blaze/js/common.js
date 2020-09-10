$(document).ready(function () {
	
	// menu
	$('.burger').on('click',function (e) {
		e.preventDefault();

		$('.menu').addClass('active');
	})

	$('.close').on('click',function (e) {
		e.preventDefault();

		$('.menu').removeClass('active');
	})

	// input
	$('.input').change(function () {
		let input = $(this);

		if(input.val() !==''){
			input.addClass('full');
		}else{
			input.removeClass('full');
		}
	})

	// to top
	$(window).on('scroll', function () {
		if($(window).scrollTop() > 500){
			$('.to-top').addClass('active');
		}else{
			$('.to-top').removeClass('active');
		}
	})

	$('.to-top').on('click',function (e) {
		e.preventDefault();

		$('html, body').animate({scrollTop: 0}, '1000');
	})
	$(".mouse-block").on("click", function (event) {
		event.preventDefault();
		var id  = $(this).attr('href'),
			top = $(id).offset().top;
		$('body,html').animate({scrollTop: top}, 1000);
	});
})

jQuery(function ($){
	if ($('.filter-container').length) {
		$('.filter-container').filterizr();
	}
})


