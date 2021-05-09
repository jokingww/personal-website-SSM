package com.wan.entity;

public class Comment {

    //姓名+性别+邮箱
    private int id;
    private String name;
    private String sex;
    private String content;
    private String date;
    private String email;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Comment(String name, String sex, String content, String date, String email) {
        this.name = name;
        this.sex = sex;
        this.content = content;
        this.date = date;
        this.email = email;
    }

    public Comment(int id, String name, String sex, String content, String date, String email) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.content = content;
        this.date = date;
        this.email = email;
    }

    public Comment() {}

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", content='" + content + '\'' +
                ", date='" + date + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
