<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/WEB-INF/views/commons/common.jsp"/>
<link rel="stylesheet" href="resources/css/member/loginForm.css">
<script type="text/javascript" src=""></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/commons/header.jsp"/>

	<div id="container">
		<div id="loginArea">
			<div id="area1">
				<div><input type="checkbox" id="autologin"><label for="autologin">로그인 유지</label></div>
				<div><input type="checkbox" id="id_save"><label for="id_save">아이디 저장</label></div>
			</div>
			<div><input type="text" id="memberId" placeholder="아이디"></div>
			<div><input type="password" id="memberPwd" placeholder="비밀번호"></div>
			<div><button id="loginBtn">로그인</button></div>
			<div id="area2"><span>회원가입</span> | <span>비밀번호 찾기</span></div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>
</html>