<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/WEB-INF/views/commons/common.jsp"/>
<link rel="stylesheet" href="resources/css/product/productDetail.css">
<script type="text/javascript" src=""></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/commons/header.jsp"/>

    <div id="container">
		<div>
			<button onclick="window.history.back();">뒤로가기</button>
		</div>
		<div>
			<div class="swiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
					<div class="swiper-slide"><img src="resources/images/1.jpg" alt=""></div>
				</div>
					<!-- 페이징 필요시 추가 -->
					<div class="swiper-pagination"></div>
					<!-- 이전, 다음 버튼 필요시 추가 -->
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
			</div>
			<div id="area2">
				<div id="area2-1">
					<div>컵 팔아요~~~</div>
					<div>2021-09-09</div>
				</div>
				<div id="area2-2">
					<div>지역: 경기도</div> 
					<div>판매자: admin</div>
				</div>
				<div id="area2-3">
<pre>
한번도 안쓴 컵 팔아요~~ 
하자 없고 깨끗합니다~~
저렴하게 가져가서 잘 쓰실 분 연락주세요
</pre>
				</div>
				<div id="area2-4">
					<div>
						<i class="xi-heart-o xi-2x">32</i>
						<!-- <i class="xi-heart xi-2x"></i> -->
					</div>
					<div><span>10000</span>원</div>
				</div>
				<div id="area2-5">
					<button>채팅하기</button>
				</div>
			</div>
		</div>
    </div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>

<script>
	const swiper = new Swiper('.swiper', {
		direction: 'horizontal',
		loop: true,
		slidesPerView: 1,
		spaceBetween: 30,

		pagination: {
			el: '.swiper-pagination',
			clickable: true,
		},

		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		}
	});
</script>
</html>