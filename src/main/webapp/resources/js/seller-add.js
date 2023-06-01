$(function () {
    
    $.ajaxSetup({
        contentType: "application/x-www-form-urlencoded;charset=UTF-8",
        type: "post",
        cache: "false"
    });

    var delayTimer;

    delayedGetList = function () {
        $('#apititle').empty();
        clearTimeout(delayTimer);
        delayTimer = setTimeout(function () {
            getList();
        }, 500);
    }

    function aladinApiCall(isbn) {
        return new Promise(function (resolve, reject) {
            $.ajax({
                url: "aladinApi.go",
                data: { isbn: isbn },
                success: function (aladindata) {
                    if (aladindata.item != null) {
                        var aladinlink = aladindata.item[0].link;
                        $.ajax({
                            url: "aladincrawling.go",
                            data: { link: aladinlink },
                            success: function (cr) {
                                if (cr != null) {
                                    console.log(cr);
                                    resolve(cr); // Promise 성공 처리
                                } else {
                                    console.error("Unexpected Crawling response", cr);
                                    resolve(null); // Promise 성공 처리, links 배열에 null 추가
                                }
                            }
                        });
                    } else {
                        console.error("Unexpected API response", aladindata);
                        resolve(null); // Promise 성공 처리, links 배열에 null 추가
                    }
                }
            });
        });
    }

    function getList() {
        // 이전 검색결과 삭제

        var title = document.getElementsByName("title")[0].value;
        var isbn = 0;
        var link = "";

        $.ajax({
            url: "KakaoApi.go",
            data: { query: title },
            success: function (data) {
                if (data.documents[0] != null) {
                    var requests = [];
                    var links = [];

                    for (var i = 0; i < data.documents.length; i++) {
                        console.log([i] + " >>>" + data.documents[i].isbn);
                        isbn = data.documents[i].isbn;
                        var isbnWithoutSpace = isbn.replace(/\s/g, "");
                        isbn = isbn.substring(isbn.indexOf(" ") + 1);
                        console.log("isbn >>> " + isbn);

                        if (isbnWithoutSpace.length === 23) {
                            var request = aladinApiCall(isbn); // Promise 객체 반환

                            requests.push(request);
                        }
                    }

                    Promise.all(requests).then(function (results) {
                        let table = "";

                        for (var i = 0; i < results.length; i++) {

                            var cr = results[i];
                            if(cr == null){
                                cr = "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg";
                            }
                            var title = data.documents[i].title;
                            var cont = data.documents[i].contents.substring(0,50)

                            table += "<table onclick='openValue(this)' style='cursor: pointer;' data-dismiss='modal'>";
                            table += "<tr>"
                            table += "<td rowspan='5' style='width: 15%; height: 30%;' data-img='" + cr + "'><img src='"+cr+"' style='width:100%; height:100%;'></td>";
                            table += "</tr>"
                            table += "<tr>"
                            table += "<td data-title='" + title + "'>&nbsp;&nbsp;" + title + "</td>";
                            table += "</tr>"
                            table += "<tr>"
                            table += "<td data-author='" + data.documents[i].authors + "'>&nbsp;&nbsp;" + data.documents[i].authors + "</td>";
                            table += "</tr>"
                            table += "<tr>"
                            table += "<td data-price='" + data.documents[i].price + "'>&nbsp;&nbsp;" + data.documents[i].price + "원</td>";
                            table += "</tr>"
                            table += "<tr>"
                            table += "<td data-content='" + data.documents[i].contents + "'>&nbsp;&nbsp;" + cont + "...</td>";
                            table += "</tr>"
                            table += "</table>";
                            table += "<br><br>";

                        }
                        $("#apititle").prepend(table);
                    });
                }
            }
        });
    }
});
