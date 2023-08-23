<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
					<c:forEach var="at" items="${ list }">
						<div class="swiper-slide"><img src="resources/upFiles/${ at.changeName }" alt=""></div>
					</c:forEach>
				</div>
					<!-- 페이징 필요시 추가 -->
					<div class="swiper-pagination"></div>
					<!-- 이전, 다음 버튼 필요시 추가 -->
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
			</div>
			<div id="area2">
				<div id="area2-1">
					<div>${ p.productName }</div>
					<div>${ p.createDate }</div>
				</div>
				<div id="area2-2">
					<div>지역: ${ p.areaName }</div> 
					<div>판매자: ${ p.memberId }</div>
				</div>
				<div id="area2-3">
<pre>
${ p.productContent }
</pre>
				</div>
				<div id="area2-4">
					<div>
						<i class="xi-heart-o xi-2x">${ p.count }</i>
						<!-- <i class="xi-heart xi-2x"></i> -->
					</div>
					<div><span>${ p.price }</span>원</div>
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