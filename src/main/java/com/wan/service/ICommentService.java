package com.wan.service;

import com.wan.entity.Comment;

import java.util.List;

public interface ICommentService {

    //获取所有评论
    List<Comment> getCommentAll();

    //添加评论
    int addComment(Comment comment);

    //根据昵称或评论内容查找
    List<Comment> searchByNameOrContent(String s);

    //根据id删除评论
    int deleteCommentById(int id);


    //根据昵称查找
    List<Comment> searchByName(String s);

    //根据评论内容查找
    List<Comment> searchByContent(String s);
}
