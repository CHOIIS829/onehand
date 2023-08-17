<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
    <header>
        <div id="header">
            <div id="logo" onclick="location.href='main'">
                <img src="resources/images/cart.png" alt="">
                <div>한손의 거래</div>
            </div>
            <div id="menu">
                <span onclick="location.href='List.pro'">중고장터</span>
                <span onclick="location.href='list.bo'">커뮤니티</span>
            </div>
            <div id="login">
            	<c:choose>
            		<c:when test="${ empty loginUser }">
		                <span class="div1" onclick="location.href='loginForm.me'">로그인</span>
		                <span class="div2" onclick="location.href='enrollForm.me'">회원가입</span>
            		</c:when>
            		<c:otherwise>
	            		<span>${ loginUser.memberName }님</span>
		                <span class="div1 material-symbols-outlined" onclick="location.href='myPage.me'">person</span>
		                <span class="div2 material-symbols-outlined" onclick="location.href='memberLogout'">logout</span>
            		</c:otherwise>
            	</c:choose>
            </div>
        </div>
    </header>