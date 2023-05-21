$(function () {


    $.ajaxSetup({
        contentType: "application/x-www-form-urlencoded;charset=UTF-8",
        type: "post",
        cache: "false"
    });

    var delayTimer; // 딜레이 타이머 변수

    delayedGetList = function () {
        clearTimeout(delayTimer); // 이전 타이머를 취소하여 중복 호출 방지
        delayTimer = setTimeout(function() {
            getList(); // 딜레이 후에 getList 함수 호출
        }, 500); // 딜레이 시간 설정 (여기서는 500ms로 설정)
    }

    function getList () {
        var title = document.getElementsByName("title")[0].value;

        var isbn = 0;

        var link = "";
        $.ajax({
            url: "KakaoApi.go",
            data: {query: title},
            success: function (data) {
                if (data.documents[0] != null) {
                    for (var i = 0; i < data.documents.length; i++) {
                        console.log([i]+" >>>" +data.documents[i].isbn);

                        isbn = data.documents[i].isbn;
                        isbn = isbn.substring(isbn.indexOf(" ") + 1);

                        $.ajax({
                            url : "aladinApi.go",
                            data : {isbn : isbn},
                            success : function(aladindata) {
                                if(aladindata.item != null){

                                    console.log([i] + ">>>" + aladindata.item[0].link);

                                    link = aladindata.item[0].link;

                                } else{
                                    console.error("Unexpected API response", aladindata);
                                }
                            }
                        });
                    }

                } else {
                    console.error("Unexpected API response", data);
                }
            }
        });
    }
})