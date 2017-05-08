$(document).ready(function(){

	$('.sub-tab a').click(function(){
		//$(this).parent().siblings().removeClass();
//		$(this).parent().addClass('active');
		
		var $targetname = $(this).attr('href').substring(1);
		$('.sub-content').css('display','none');
		$('.sub-'+$targetname).show();
		
	});

	/* 弹出层事件 */
	$('.openpop').click(function(){
		var $targetname = $(this).attr('href').substring(1);
		if ($targetname!='') {
			$('.popwin').hide();
			$('.popwin-'+$targetname).show().animate({opacity:"show",top:""},"fast");
		} else {
			$('.popwin-default').show().animate({opacity:"hide",top:""},"fast");
		}
		return false;
	});

	$('.close').click(function(){
		$(this).parents('.popwin').animate({top:"0",opacity:"hide"},"fast");
	});

});