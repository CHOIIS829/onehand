$(function(){
    var inputId = $("#enrollForm input[name=memberId]");

    // 아이디 중복체크
    inputId.blur(function(){
        if(inputId.val().length >= 5){
            $.ajax({
                url: "checkId",
                data: {memberId: inputId.val()},
                type: "get",
                success: function(result){
                    if(result == "true"){
                        $("#checkId").css("color", "green").text("사용 가능한 아이디입니다.");
                        $("#enrollForm button[type=submit]").attr("disabled", false);
                    }else{
                        $("#checkId").css("color", "red").text("이미 사용중인 아이디입니다.");
                        $("#enrollForm button[type=submit]").attr("disabled", true);    
                    }
                },
                error: function(){
                    console.log("error");
                }
            });
        }else{
            $("#checkId").css("color", "orange").text("아이디는 5글자 이상이어야 합니다.");
            $("#enrollForm button[type=submit]").attr("disabled", true);
        }
    });

    var inputPwd1 = $("#enrollForm input[name=memberPwd]");
    var inputPwd2 = $("#enrollForm input[name=memberPwd2]");
    // 비밀번호 일치여부
    inputPwd2.blur(function(){
        if(inputPwd1.val() == inputPwd2.val()){
            $("#checkPwd").css("color", "green").text("비밀번호가 일치합니다.");
        }else{
            $("#checkPwd").css("color", "red").text("비밀번호가 일치하지 않습니다.");
        }
    });

})