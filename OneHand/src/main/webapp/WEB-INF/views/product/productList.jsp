<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/WEB-INF/views/commons/common.jsp"/>
<link rel="stylesheet" href="resources/css/product/productList.css">
<script type="text/javascript" src=""></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/commons/header.jsp"/>

    <div id="container">
	    <div id="area1">
			<div id="insertBtn"><button onclick="location.href='insertForm.pro'">글작성</button></div>
			<div id="search">
				<div><input type="text"></div>
				<div><button>검색</button></div>
			</div>
			<div id="category">
				<div>
					<select name="area" id="">
						<option value="0">전체</option>
						<option value="1">서울</option>
						<option value="2">부산</option>
						<option value="3">대구</option>
						<option value="4">인천</option>
						<option value="5">광주</option>
						<option value="6">대전</option>
						<option value="7">울산</option>
						<option value="8">세종</option>
						<option value="9">경기</option>
						<option value="10">강원</option>
						<option value="11">충북</option>
						<option value="12">충남</option>
						<option value="13">전북</option>
						<option value="14">전남</option>
						<option value="15">경북</option>
						<option value="16">경남</option>
						<option value="17">제주</option>
					</select>
				</div>
				<div>
					<select name="category" id="">
						<option value="0">전체</option>
						<option value="1">디지털</option>
						<option value="2">가구</option>
						<option value="3">의류</option>
						<option value="4">도서</option>
						<option value="5">스포츠/레저</option>
						<option value="6">취미</option>
						<option value="7">기타</option>
					</select>
				</div>
				<div>
					<select name="" id="">
						<option value="">최신순</option>
						<option value="">인기순</option>
						<option value="">가격높은순</option>
						<option value="">가격낮은순</option>
					</select>
				</div>
			</div>
	    </div>
	    <div id="productList">
	        <div class="product" onclick="location.href='detail.pro'">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	        <div class="product">
	            <div class="productPic"><img src="resources/images/1.jpg" alt=""></div>
	            <div class="productName">물건 이름</div>
	            <div class="productInfo">
	                <div class="price">가격</div>
	                <div class="productDate">등록일</div>
	            </div>
	        </div>
	    </div>
		<div id="pagingBar">
			<nav>
				<ul>
					<li>
						<a href="#">
							<span>&laquo;</span>
						</a>
					</li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li>
						<a href="#">
							<span>&raquo;</span>
						</a>
					</li>
				</ul>
			  </nav>

		</div>
    </div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>
</html>