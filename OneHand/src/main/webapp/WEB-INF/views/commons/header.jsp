<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <header>
        <div id="header">
            <div id="logo" onclick="location.href='main'">
                <img src="resources/images/cart.png" alt="">
                <div>한손의 거래</div>
            </div>
            <div id="menu">
                <span>중고장터</span>
                <span>커뮤니티</span>
            </div>
            <div id="login">
                <span onclick="loginForm();">로그인</span>
                <span onclick="enrollForm();">회원가입</span>
                <!-- <span>홍길동님</span>
                <span class="material-symbols-outlined">person</span>
                <span class="material-symbols-outlined">logout</span> -->
            </div>
        </div>
    </header>
    
    <script>
    	// 로그인으로 이동
    	function loginForm(){
    		location.href="loginForm.me";
    	}
    	
    	// 회원가입으로 이동
    	function enrollForm(){
    		location.href="enrollForm.me";
    	}
    </script>