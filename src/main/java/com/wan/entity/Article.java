package com.wan.entity;

public class Article {

    private int id;
    private String title;
    private String content;
    private String subtitle;
    private String content2;
    private String date;
    //构造函数，构造注入
    public Article(int id, String title, String content, String subtitle, String content2, String date) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.subtitle = subtitle;
        this.content2 = content2;
        this.date = date;
    }

    public Article(String title, String content, String subtitle, String content2, String date) {
        this.title = title;
        this.content = content;
        this.subtitle = subtitle;
        this.content2 = content2;
        this.date = date;
    }

    public Article(String title, String content, String subtitle, String content2) {
        this.title = title;
        this.content = content;
        this.subtitle = subtitle;
        this.content2 = content2;
    }

    public Article(int id, String title, String content, String subtitle, String content2) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.subtitle = subtitle;
        this.content2 = content2;
    }

    //无参构造函数
    public Article() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getContent2() {
        return content2;
    }

    public void setContent2(String content2) {
        this.content2 = content2;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }


    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", subtitle='" + subtitle + '\'' +
                ", content2='" + content2 + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
