package com.wan.entity;

public class Log {
    private int id;
    private int type;
    private String content;
    private String date;

    public Log(int type, String content, String date) {
        this.type = type;
        this.content = content;
        this.date = date;
    }

    public Log(int id, int type, String content, String date) {
        this.id = id;
        this.type = type;
        this.content = content;
        this.date = date;
    }

    public Log() {}

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", type=" + type +
                ", content='" + content + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
