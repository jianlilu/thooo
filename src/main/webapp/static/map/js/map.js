$(document).ready(function(){
	
	$(window).resize(function(){
		winResize();
	});
	winResize();
	
	$('.left-nav li').hover(function(){
		$(this).siblings('.selected').find('a').css('background-color','#000');
		$(this).addClass('active');
	},function(){
		$(this).siblings('.selected').find('a').css('background-color','#3C96E6');
		$(this).removeClass('active');
	});
	
	$('.left-content li').hover(function(){
		$(this).css('background-color','#FBFBFB');
	},function(){
		$(this).css('background-color','#FFF');
	});
	
	$('.right-side .hide-btn').click(function(){
		$('.left-side').addClass('hide');
		$(this).hide();
		$('.show-btn').show();
		$('.right-side').width($(window).width());
	});
	
	$('.right-side .show-btn').click(function(){
		$('.left-side').removeClass('hide');
		$(this).hide();
		$('.hide-btn').show();
		$('.right-side').width($(window).width() - 461);
	});
	
});

function winResize(){
	var winWidth = $(window).width(),
		rcWidth = $(window).width() - 461,
		winHeight = $(window).height();

	$('.left-side').height(winHeight);
	$('.left-nav').height(winHeight);
	$('.left-content').height(winHeight);
	$('.right-side').width(rcWidth);
	$('.right-side').height(winHeight);
}