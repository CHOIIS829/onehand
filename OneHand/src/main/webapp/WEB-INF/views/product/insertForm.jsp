<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/WEB-INF/views/commons/common.jsp"/>
<link rel="stylesheet" href="resources/css/product/insertForm.css">
<script type="text/javascript" src=""></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/commons/header.jsp"/>

    <div id="container">
        <div>상품 등록</div>
        <table>
            <tr>
                <td>제목</td>
                <td><input type="text" id="title" name="productName"></td>
            </tr>
            <tr>
                <td>가격</td>
                <td><input type="number" id="price" name="price"></td>
            </tr>
            <tr>
                <td>지역</td>
                <td>
                    <select name="area" id="area">
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
                </td>
            </tr>
            <tr>
                <td>카테고리</td>
                <td>
                    <select name="category" id="category">
                        <option value="0">전체</option>
                        <option value="1">디지털</option>
                        <option value="2">가구</option>
                        <option value="3">의류</option>
                        <option value="4">도서</option>
                        <option value="5">스포츠/레저</option>
                        <option value="6">취미</option>
                        <option value="7">기타</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>설명</td>
                <td>
                    <textarea name="productContent" id="productContent"></textarea>
                </td>
            </tr>
        </table>
    </div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>

</html>