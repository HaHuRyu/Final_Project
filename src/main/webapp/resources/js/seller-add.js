$(function () {
    
    $.ajaxSetup({
        contentType: "application/x-www-form-urlencoded;charset=UTF-8",
        type: "post",
        cache: "false"
    });

    var delayTimer;

    delayedGetList = function () {
        //$("#apititle").remove();
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

                        console.log("linklnegth >>> " + results.length);
                        console.log("datadocuments >>> " + data.documents.length);
                        for (var i = 0; i < results.length; i++) {
                            var cr = results[i];
                            var title = data.documents[i].title;

                            console.log("title >>> " + title);
                            table += "<table onclick='openValue(this)'>";
                            table += "<tr>";
                            table += "<th> 책 제목 </th>";
                            table += "<td data-value='" + title + "'>" + title + "</td>";
                            table += "</tr>";
                            table += "<tr>";
                            table += "<th> 저자 </th>";
                            table += "<td data-value2='" + data.documents[i].authors + "'>" + data.documents[i].authors + "</td>";
                            table += "</tr>";
                            table += "<tr>";
                            table += "<th> 책 표지 </th>";
                            table += "<td data-value3='" + cr + "'>" + cr + "</td>";
                            table += "</tr>";
                            table += "<tr>";
                            table += "<th> 책 가격 </th>";
                            table += "<td data-value4='" + data.documents[i].price + "'>" + data.documents[i].price + "</td>";
                            table += "</tr>";
                            table += "<tr>";
                            table += "<th> 책 소개글 </th>";
                            table += "<td data-value5='" + data.documents[i].cotents + "'>" + data.documents[i].contents + "</td>";
                            table += "</tr>";
                            table += "</table>";

                            console.log("link >>> " + cr);
                        }
                        $("#apititle").prepend(table);
                    });
                }
            }
        });
    }
});
