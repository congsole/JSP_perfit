
$(function () {
    // 네비게이션 바 슬라이딩
    $('#slideToggle').click(function () {
        $("div#slideMenu").slideToggle("slow");
    });

});

document.addEventListener('mouseover', function (e) {
    $('.main_section01>div:first-child').css('height', function () {
        let height = $('.clearfix>li>img').css('height');
        return height;
    })
    $('.main_section01>div:nth-child(3)').css('height', function () {
        let height = $('.main_section01 img').css('height');
        return height;
    })
})
/*
$(document).ready(function() {
	$('#main_menu li').bind('mouseover', function(e) {
		e.target.children[0].classList.add('hover');
	});
	$('#main_menu li').bind('mouseout', function(e) {
		e.target.children[0].classList.remove('hover');
	});

	$('#main_menu li').bind('click', function(e) {
		e.target.children[0].click();
	});	
}); 
	*/			
		