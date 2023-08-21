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
        <form action="insert.pro" method="post" enctype="multipart/form-data">
            <input type="hidden" name="memberId" value="${loginUser.memberId}">
            <table>
                <tr>
                    <td>
                        <div>사진</div>
                    </td>
                    <td id="fileArea">
                        <input type="file" class="file1" name="upFiles" onchange="readURL(this, 1);" required><img class="preview1" onclick="clickInput(1);">
                        <input type="file" class="file2" name="upFiles" onchange="readURL(this, 2);"><img class="preview2" onclick="clickInput(2);">
                        <input type="file" class="file3" name="upFiles" onchange="readURL(this, 3);"><img class="preview3" onclick="clickInput(3);">
                        <input type="file" class="file4" name="upFiles" onchange="readURL(this, 4);"><img class="preview4" onclick="clickInput(4);">
                        <input type="file" class="file5" name="upFiles" onchange="readURL(this, 5);"><img class="preview5" onclick="clickInput(5);">
                        <input type="file" class="file6" name="upFiles" onchange="readURL(this, 6);"><img class="preview6" onclick="clickInput(6);">
                        <input type="file" class="file7" name="upFiles" onchange="readURL(this, 7);"><img class="preview7" onclick="clickInput(7);">
                        <input type="file" class="file8" name="upFiles" onchange="readURL(this, 8);"><img class="preview8" onclick="clickInput(8);">
                        <input type="file" class="file9" name="upFiles" onchange="readURL(this, 9);"><img class="preview9" onclick="clickInput(9);">
                        <input type="file" class="file10" name="upFiles" onchange="readURL(this, 10);"><img class="preview10" onclick="clickInput(10);">
                    </td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td><input type="text" id="title" name="productName" required></td>
                </tr>
                <tr>
                    <td>가격</td>
                    <td><input type="number" id="price" name="price" required></td>
                </tr>
                <tr>
                    <td>지역</td>
                    <td>
                        <select name="areaId" id="area" required>
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
                        <select name="categoryNo" id="category" required>
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
                        <textarea name="productContent" id="productContent" required></textarea>
                    </td>
                </tr>
            </table>
            <div id="btnArea">
                <button type="submit">등록</button>
                <button type="button" onclick="window.history.back();">취소</button>
            </div>
        </form>
    </div>
	
	<jsp:include page="/WEB-INF/views/commons/footer.jsp"/>
</body>

<script>
    $(function(){
        $("#fileArea input[type=file]").hide();
        $("#fileArea img").attr("onerror", "this.src='resources/images/remove.png'");
    })

    function clickInput(num){
        $(".file"+num).click();
    }

    function readURL(input, num){
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
                $(".preview"+num).attr("src", e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }else{
            $(".preview"+num).attr("src", "");
        }
    }
</script>

</html>