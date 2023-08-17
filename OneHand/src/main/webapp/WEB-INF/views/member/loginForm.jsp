<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/WEB-INF/views/commons/common.jsp"/>
<link rel="stylesheet" href="resources/css/member/loginForm.css">
<script type="text/javascript" src="resources/js/member/loginForm.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/commons/header.jsp"/>

	<div id="container">
		<div id="loginArea">
			<form action="login.me" method="post">
				<div id="area1">
					<div><input type="checkbox" id="autoLogin" name="autoLogin" value="y"><label for="autoLogin">로그인 유지</label></div>
					<c:choose>
						<c:when test="${ not empty cookie.saveId }">
							<div><input type="checkbox" id="saveId" name="saveId" value="y" checked><label for="saveId">아이디 저장</label></div>
						</c:when>
						<c:otherwise>
							<div><input type="checkbox" id="saveId" name="saveId" value="y"><label for="saveId">아이디 저장</label></div>
						</c:otherwise>
					</c:choose>
				</div>
				<div><input type="text" id="memberId" name="memberId" value="${ cookie.saveId.value }" placeholder="아이디"></div>
				<div><input type="password" id="memberPwd" name="memberPwd" placeholder="비밀번호"></div>
				<div><button type="submit" id="loginBtn">로그인</button></div>
			</form>
			<div id="area2"><span>회원가입</span> | <span>비밀번호 찾기</span></div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>
</html>