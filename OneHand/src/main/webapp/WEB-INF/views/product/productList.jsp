<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/WEB-INF/views/commons/common.jsp"/>
<link rel="stylesheet" href="resources/css/product/productList.css">
<script type="text/javascript" src="resources/js/product/productList.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/commons/header.jsp"/>

    <div id="container">
	    <div id="area1">
			<div id="insertBtn">
				<c:if test="${ not empty loginUser }">
					<button onclick="location.href='insertForm.pro'">글작성</button>
				</c:if>
			</div>
			<div id="search">
				<div><input type="text" id="keyword"></div>
				<div><button type="button" id="searchBtn">검색</button></div>
			</div>
			<div id="categoryArea">
				<div>
					<select name="areaId" id="area">
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
					<select name="categoryNo" id="category">
						<option value="0">전체</option>
						<option value="1">디지털</option>
						<option value="2">가구</option>
						<option value="3">의류</option>
						<option value="4">도서</option>
						<option value="5">스포츠/레저</option>
						<option value="6">기타</option>
					</select>
				</div>
				<div>
					<select name="sortOption" id="sortOption">
						<option value="latest">최신순</option>
						<option value="popular">인기순</option>
						<option value="highPrice">가격높은순</option>
						<option value="lowPrice">가격낮은순</option>
					</select>
				</div>
			</div>
	    </div>
	    <div id="productList">
			
	    </div>
		<div id="noArea">

		</div>
		<div id="pagingBar">
			<nav>

			</nav>
		</div>
    </div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>
</html>