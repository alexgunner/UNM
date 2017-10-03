// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// require rails-ujs
//= require turbolinks
//= require_tree .

jQuery(function($) {'use strict',

	// all Parallax Section
	$(window).load(function(){'use strict',
		$("#services").parallax("50%", 0.3);
		$("#clients").parallax("50%", 0.3);
	});

	$(".live-the-experience-icon").mouseenter(function(){
		$(".first-live-the-experience-bg").fadeOut(500)
		$(".second-live-the-experience-bg").fadeIn(500)
	})

	$(".second-live-the-experience-bg").mouseleave(function(){
		$(".first-live-the-experience-bg").fadeIn(500)
		$(".second-live-the-experience-bg").fadeOut(500)
	})

	$(".student").on('click', function(){
		$student = $(".student").index(this)
		if ($student == 0) {
			$(this).addClass("active")
			$(".student:eq(1)").removeClass("active")
			$(".student:eq(2)").removeClass("active")
			$(".student-text:eq(0)").addClass("active")
			$(".student-text:eq(1)").removeClass("active")
			$(".student-text:eq(2)").removeClass("active")
		} else if ($student == 1) {
			$(".student:eq(0)").removeClass("active")
			$(this).addClass("active")
			$(".student:eq(2)").removeClass("active")
			$(".student-text:eq(0)").removeClass("active")
			$(".student-text:eq(1)").addClass("active")
			$(".student-text:eq(2)").removeClass("active")
		} else {
			$(".student:eq(0)").removeClass("active")
			$(".student:eq(1)").removeClass("active")
			$(this).addClass("active")
			$(".student-text:eq(0)").removeClass("active")
			$(".student-text:eq(1)").removeClass("active")
			$(".student-text:eq(2)").addClass("active")
		}
	})





	// portfolio filter
	$(window).load(function(){'use strict',
		$portfolio_selectors = $('.portfolio-filter >li>a');
		if($portfolio_selectors!='undefined'){
			$portfolio = $('.portfolio-items');
			$portfolio.isotope({
				itemSelector : '.col-sm-3',
				layoutMode : 'fitRows'
			});

			$portfolio_selectors.on('click', function(){
				$portfolio_selectors.removeClass('active');
				$(this).addClass('active');
				var selector = $(this).attr('data-filter');
				$portfolio.isotope({ filter: selector });
				return false;
			});
		}
	});

	//Pretty Photo
	 $("a[data-gallery^='prettyPhoto']").prettyPhoto({
	  social_tools: false
	 });


	// Contact form validation
	var form = $('.contact-form');
	form.submit(function () {'use strict',
		$this = $(this);
		$.post($(this).attr('action'), function(data) {
			$this.prev().text(data.message).fadeIn().delay(3000).fadeOut();
		},'json');
		return false;
	});


	// Navigation Scroll
	$(window).scroll(function(event) {
		Scroll();
	});

	$('.navbar-collapse ul li a').click(function() {
		$('html, body').animate({scrollTop: $(this.hash).offset().top - 79}, 1000);
		return false;
	});

});

// Preloder script
jQuery(window).load(function(){'use strict';
	$(".preloader").delay(1600).fadeOut("slow").remove();
});

//Preloder script
/*jQuery(window).load(function(){'use strict';

	// Slider Height
	var slideHeight = $(window).height();
	$('#home .carousel-inner .item, #home .video-container').css('height',slideHeight);

	$(window).resize(function(){'use strict',
		$('#home .carousel-inner .item, #home .video-container').css('height',slideHeight);
	});

});*/


// User define function
function Scroll() {
	var contentTop      =   [];
	var contentBottom   =   [];
	var winTop      =   $(window).scrollTop();
	var rangeTop    =   200;
	var rangeBottom =   500;
	$('.navbar-collapse').find('.scroll a').each(function(){
		contentTop.push( $( $(this).attr('href') ).offset().top);
		contentBottom.push( $( $(this).attr('href') ).offset().top + $( $(this).attr('href') ).height() );
	})
	$.each( contentTop, function(i){
		if ( winTop > contentTop[i] - rangeTop ){
			$('.navbar-collapse li.scroll')
			.removeClass('active')
			.eq(i).addClass('active');
		}
	})

};


	// Skill bar Function

	jQuery(document).ready(function(){
	jQuery('.skillbar').each(function(){
		jQuery(this).find('.skillbar-bar').animate({
			width:jQuery(this).attr('data-percent')
		},6000);
	});
});
