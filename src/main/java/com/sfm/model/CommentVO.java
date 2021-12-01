package com.sfm.model;

import java.util.Date;

public class CommentVO {
    int b_no,b_comment_no;
    String b_comment_content,b_comment_write;
    Date b_comment_date;

    public int getB_no() {
        return b_no;
    }

    public void setB_no(int b_no) {
        this.b_no = b_no;
    }

    public int getB_comment_no() {
        return b_comment_no;
    }

    public void setB_comment_no(int b_comment_no) {
        this.b_comment_no = b_comment_no;
    }

    public String getB_comment_content() {
        return b_comment_content;
    }

    public void setB_comment_content(String b_comment_content) {
        this.b_comment_content = b_comment_content;
    }

    public String getB_comment_write() {
        return b_comment_write;
    }

    public void setB_comment_write(String b_comment_write) {
        this.b_comment_write = b_comment_write;
    }

    public Date getB_comment_date() {
        return b_comment_date;
    }

    public void setB_comment_date(Date b_comment_date) {
        this.b_comment_date = b_comment_date;
    }
}
