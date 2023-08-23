$(document).ready(function(){
    // 상품리스트
    function renderProductList(products) {
        let productListHTML = "";
        for (let i in products) {
            productListHTML += '<div class="product" onclick="location.href=\'detail.pro?productNo=' + products[i].productNo + '\'">';
            productListHTML += '<div class="productPic"><img src="resources/upFiles/' + products[i].changeName + '" alt=""></div>';
            productListHTML += '<div class="productName">' + products[i].productName + '</div>';
            productListHTML += '<div class="productInfo">';
            productListHTML += '<div class="price">' + products[i].price + '</div>';
            productListHTML += '<div class="productDate">' + products[i].createDate + '</div>';
            productListHTML += '</div>';
            productListHTML += '</div>';
        }
        return productListHTML;
    }

    // 페이지네이션
    function renderPagination(pagination) {
        let paginationHTML = '<ul>';
        paginationHTML += '<li>';
        paginationHTML += '<a href="#">';
        paginationHTML += '<span>&laquo;</span>';
        paginationHTML += '</a>';
        paginationHTML += '</li>';
        for (let i = pagination.startPage; i <= pagination.endPage; i++) {
            paginationHTML += '<li><a href="list.pro?cPage=' + i + '">' + i + '</a></li>';
        }
        paginationHTML += '<li>';
        paginationHTML += '<a href="#">';
        paginationHTML += '<span>&raquo;</span>';
        paginationHTML += '</a>';
        paginationHTML += '</li>';
        paginationHTML += '</ul>';
        return paginationHTML;
    }

    function fetchDataAndRender(areaId, categoryNo, sortOption) {
        $.ajax({
            url: "list.pro",
            type: "get",
            data: {
                areaId: areaId,
                categoryNo: categoryNo,
                sortOption: sortOption
            },
            success: function (result) {
                let productListHTML = "";
                let paginationHTML = "";
                let noResultsHTML = "";

                if (result.list.length === 0) {
                    noResultsHTML = '<div class="nonList">검색결과가 없습니다.</div>';
                } else {
                    productListHTML = renderProductList(result.list);
                }

                paginationHTML = renderPagination(result.pi);

                $("#productList").html(productListHTML);
                $("#pagingBar nav").html(paginationHTML);
                $("#noArea").html(noResultsHTML);
            },
            error: function () {
                console.log("error");
            }
        });
    }

    // 카테고리 조건 유지
    fetchDataAndRender($("#area").val(), $("#category").val(), $("#sortOption").val());

    $("#area, #category, #sortOption").on("change", function () {
        fetchDataAndRender($("#area").val(), $("#category").val(), $("#sortOption").val());
    });

    function search(keyword){
        $.ajax({
            url: "list.pro",
            type: "get",
            data: {keyword: keyword},
            success: function(result){
                let productListHTML = "";
                let paginationHTML = "";
                let noResultsHTML = "";

                if(result.list.length === 0){
                    noResultsHTML = '<div class="nonList">검색결과가 없습니다.</div>';
                } else {
                    productListHTML = renderProductList(result.list);
                }

                paginationHTML = renderPagination(result.pi);

                $("#productList").html(productListHTML);
                $("#pagingBar nav").html(paginationHTML);
                $("#noArea").html(noResultsHTML);
            },
            error: function(){
                console.log("error");
            }
        });
    }

    search($("#keyword").val());

    $("#searchBtn").on("click", function(){
        search($("#keyword").val());
    });
});
