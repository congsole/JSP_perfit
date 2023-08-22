
$(function () {
    // 네비게이션 바 슬라이딩
    $('#slideToggle').click(function () {
        $("div#slideMenu").slideToggle("slow");
    });
    //이미지 슬라이드의 양 옆 사이드 높이조정 (페이지 로딩 시)
    $('.main_section01>div:first-child').css('height', function () {
        let height = $('.clearfix>li>img').css('height');
        return height;
    })
    $('.main_section01>div:nth-child(3)').css('height', function () {
        let height = $('.main_section01 img').css('height');
        return height;
    })
});
// 이미지 슬라이드의 양 옆 사이드 높이조정 (페이지 줌 시)
document.addEventListener('mouseout', function (e) {
    $('.main_section01>div:first-child').css('height', function () {
        let height = $('.clearfix>li>img').css('height');
        return height;
    })
    $('.main_section01>div:nth-child(3)').css('height', function () {
        let height = $('.main_section01 img').css('height');
        return height;
    })
})
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
   
   //getElemenyByClass --> 배열로 가져온다. 주의하자.
			
		