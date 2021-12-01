package com.sfm.model;

import java.util.Date;

public class BoardVO {
    int b_no,b_views;
    String b_title,b_content,b_writer,b_modified,b_dateformat;
    Date b_date;

    public String getB_dateformat() {
        return b_dateformat;
    }

    public void setB_dateformat(String b_dateformat) {
        this.b_dateformat = b_dateformat;
    }

    public int getB_no() {
        return b_no;
    }

    public void setB_no(int b_no) {
        this.b_no = b_no;
    }

    public int getB_views() {
        return b_views;
    }

    public void setB_views(int b_views) {
        this.b_views = b_views;
    }

    public String getB_title() {
        return b_title;
    }

    public void setB_title(String b_title) {
        this.b_title = b_title;
    }

    public String getB_content() {
        return b_content;
    }

    public void setB_content(String b_content) {
        this.b_content = b_content;
    }

    public String getB_writer() {
        return b_writer;
    }

    public void setB_writer(String b_writer) {
        this.b_writer = b_writer;
    }

    public String getB_modified() {
        return b_modified;
    }

    public void setB_modified(String b_modified) {
        this.b_modified = b_modified;
    }

    public Date getB_date() {
        return b_date;
    }

    public void setB_date(Date b_date) {
        this.b_date = b_date;
    }
}
