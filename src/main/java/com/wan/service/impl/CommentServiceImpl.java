package com.wan.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wan.dao.ICommentDao;
import com.wan.entity.Comment;
import com.wan.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements ICommentService {

    @Autowired(required = false)
    private ICommentDao commentDao;

    @Override
    public List<Comment> getCommentAll() {
        return commentDao.getCommentAll();
    }

    @Override
    public int addComment(Comment comment) {
        return commentDao.addComment(comment);
    }

    @Override
    public List<Comment> searchByNameOrContent(String s) {
        return commentDao.searchByNameOrContent(s);
    }

    @Override
    public int deleteCommentById(int id) {
        return commentDao.deleteCommentById(id);
    }

    @Override
    public List<Comment> searchByName(String s) {
        return commentDao.searchByName(s);
    }

    @Override
    public List<Comment> searchByContent(String s) {
        return commentDao.searchByContent(s);
    }


}
