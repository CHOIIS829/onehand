$(document).ready(function(){
    $.ajax({
        url: "list.pro",
        type: "get",
        success: function(result){
            var html = "";
            var html2 = "";

            // 상품리스트
            for(let i in result.list){
                html += '<div class="product" onclick="location.href=\'detail.pro?productNo=' + result.list[i].productNo + '\'">';
                    html += '<div class="productPic"><img src="resources/upFiles/' + result.list[i].changeName + '" alt=""></div>';
                    html += '<div class="productName">' + result.list[i].productName + '</div>';
                    html += '<div class="productInfo">';
                        html += '<div class="price">' + result.list[i].price + '</div>';
                        html += '<div class="productDate">' + result.list[i].createDate + '</div>';
                    html += '</div>';
                html += '</div>';
            }

            // 페이지네이션
            html2 += '<ul>';
                html2 += '<li>';
                    html2 += '<a href="#">';
                        html2 += '<span>&laquo;</span>';
                    html2 += '</a>';
                html2 += '</li>';
                for(let i = result.pi.startPage; i <= result.pi.endPage; i++){
                    html2 += '<li><a href="list.pro?cPage=' + i + '">' + i + '</a></li>';
                }
                html2 += '<li>';
                    html2 += '<a href="#">';
                        html2 += '<span>&raquo;</span>';
                    html2 += '</a>';
                html2 += '</li>';
            html2 += '</ul>';

            $("#productList").html(html);
            $("#pagingBar nav").html(html2);
        },
        error: function(){
            console.log("error");
        }
    });
});

function changeList(){
    var areaId = $("#area").val();
    var categoryNo = $("#category").val();
    var sortOption = $("#sortOption").val();
    $.ajax({
        url: "list.pro",
        type: "get",
        data: {areaId: areaId, 
               categoryNo: categoryNo, 
               sortOption: sortOption},
        success: function(result){
            var html = "";
            var html2 = "";
            var html3 = "";
            if(result.list.length == 0){
                html3 += '<div class="nonList">검색결과가 없습니다.</div>';
            }else{
                // 상품리스트
                for(let i in result.list){
                    html += '<div class="product" onclick="location.href=\'detail.pro?productNo=' + result.list[i].productNo + '\'">';
                        html += '<div class="productPic"><img src="resources/upFiles/' + result.list[i].changeName + '" alt=""></div>';
                        html += '<div class="productName">' + result.list[i].productName + '</div>';
                        html += '<div class="productInfo">';
                            html += '<div class="price">' + result.list[i].price + '</div>';
                            html += '<div class="productDate">' + result.list[i].createDate + '</div>';
                        html += '</div>';
                    html += '</div>';
                }
            }
            
            // 페이지네이션
            html2 += '<ul>';
                html2 += '<li>';
                    html2 += '<a href="#">';
                        html2 += '<span>&laquo;</span>';
                    html2 += '</a>';
                html2 += '</li>';
                for(let i = result.pi.startPage; i <= result.pi.endPage; i++){
                    html2 += '<li><a href="list.pro?cPage=' + i + '">' + i + '</a></li>';
                }
                html2 += '<li>';
                    html2 += '<a href="#">';
                        html2 += '<span>&raquo;</span>';
                    html2 += '</a>';
                html2 += '</li>';
            html2 += '</ul>';

            $("#productList").html(html);
            $("#pagingBar nav").html(html2);
            $("#noArea").html(html3);
        },
        error: function(){
            console.log("error");
        }
    });
}

