// JavaScript Document

$(document).ready(function(){

$(".header .btn_menu").click(function(){
		
		$(".nav_w").toggle();
		$(".mask").toggle();
  });

$(".nav_w .close").click(function(){
		
		$(".nav_w").css("display","none");
		$(".mask").css("display","none");
  });

$(".mask").click(function(){
		
		$(".nav_w").css("display","none");
		$(".mask").css("display","none");
  });




//��ҳ�󽹵�ͼ start
    var swiper_1 = new Swiper('.index_banner', {
	  loop: true,
	  autoplay: {
        delay: 4000,
        disableOnInteraction: false,
      },
      navigation: {
        nextEl: '.index_banner .swiper-button-next',
        prevEl: '.index_banner .swiper-button-prev',
      },
	  pagination: {
        el: '.index_banner .swiper-pagination',
		clickable: true,
      },
    });

//��ҳ�󽹵�ͼ end	

/*��ͼƬ�Ĳ������ɻ�ȡimg�߶ȣ����ȣ�����һЩ�в����ȣ�*/ 

if($(".wrap").width()<=750){

$('.header_w img').load(function(){
var header_h=$(".header_w").height();
$(".nav_w").css("top",header_h);
							   });
}

	
})