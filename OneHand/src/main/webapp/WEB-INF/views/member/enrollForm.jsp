<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한손의 거래 > 회원가입</title>

<jsp:include page="/WEB-INF/views/commons/common.jsp"/>
<link rel="stylesheet" href="resources/css/member/enrollForm.css">
<script type="text/javascript" src="resources/js/member/enrollForm.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/commons/header.jsp"/>

    <div id="container">
        <div id="enrollForm">
            <div id="title">회원가입</div>
            <form action="insert.me" method="post">
                <table>
                    <tr>
                        <td>* 아이디</td>
                        <td><input type="text" name="memberId" required></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2" id="checkId"></td>
                    </tr>
                    <tr>
                        <td>* 비밀번호</td>
                        <td><input type="password" name="memberPwd" required></td>
                    </tr>
                    <tr>
                        <td>* 비밀번호 확인</td>
                        <td><input type="password" name="memberPwd2" required></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2" id="checkPwd"></td>
                    </tr>
                    <tr>
                        <td>* 이름</td>
                        <td><input type="text" name="memberName" required></td>
                    </tr>
                    <tr>
                        <td>* 이메일</td>
                        <td><input type="email" name="email" required></td>
                    </tr>
                    <tr>
                        <td>성별</td>
                        <td>
                            <div>
                                <input type="radio" name="gender" value="M" style="width: 15px;"><label for="men">남</label> 
                                <input type="radio" name="gender" value="F" style="width: 15px;"><label for="women">여</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" id="btnArea">
                            <button type="submit" disabled>회원가입</button>
                            <button type="button" onclick="location.href='main'">취소</button>
                        </td>
                    </tr>
                </table>

            </form>

        </div>
    </div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>
</html>