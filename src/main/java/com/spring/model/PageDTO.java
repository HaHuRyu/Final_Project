package com.spring.model;

import lombok.Data;

@Data
public class PageDTO {

    private int page;
    private int rowsize;
    private int totalRecord;
    private int startNo;
    private int endNo;
    private int startBlock;
    private int endBlock;
    private int allPage;
    private int block = 3;

    private String field;

    private String keyword;
    public PageDTO() {  }

    public PageDTO(int page, int rowsize, int totalRecord) {
        this.page = page;
        this.rowsize = rowsize;
        this.totalRecord = totalRecord;

        // 해당 페이지에서 시작 번호
        this.startNo = (this.page * this.rowsize)
                - (this.rowsize - 1);

        // 해당 페이지에서 끝 번호
        this.endNo = (this.page * this.rowsize);

        // 해당 페이지에서 시작 블럭
        this.startBlock =
                (((this.page - 1) / this.block) * this.block) + 1;

        // 해당 페이지에서 마지막 블럭
        this.endBlock =
                (((this.page - 1) / this.block) * this.block) + this.block;

        // 전체 페이지 수 얻어오는 과정
        this.allPage =
                (int)Math.ceil(this.totalRecord / (double)this.rowsize);

        if(this.endBlock > this.allPage) {
            this.endBlock = this.allPage;
        }

    }  // 인자 생성자

    public PageDTO(int page, int rowsize,
                   int totalRecord, String field, String keyword) {

        this(page, rowsize, totalRecord);

        this.field = field;

        this.keyword = keyword;

    }

}
