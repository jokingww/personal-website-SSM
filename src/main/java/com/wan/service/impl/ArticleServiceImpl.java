package com.wan.service.impl;

import com.wan.dao.IArticleDao;
import com.wan.entity.Article;
import com.wan.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements IArticleService {

    @Autowired(required = false)
    private IArticleDao articleDao;

    @Override
    public List<Article> getArticleList() {
        return articleDao.getArticleList();
    }

    @Override
    public List<Article> getArticleListWithLimit(int n) {
        return articleDao.getArticleListWithLimit(n);
    }

    @Override
    public Article getArticleById(int id) {
        return articleDao.getArticleById(id);
    }

    @Override
    public List<Article> searchByContent(String s) {
        return articleDao.searchByContent(s);
    }

    @Override
    public Article getAfterArticle(int id) {
        return articleDao.getAfterArticle(id);
    }

    @Override
    public Article getPreArticle(int id) {
        return articleDao.getPreArticle(id);
    }

    @Override
    public Article getFirstArticle() {
        return articleDao.getFirstArticle();
    }

    @Override
    public Article getLastArticle() {
        return articleDao.getLastArticle();
    }

    @Override
    public int addArticle(Article article) {
        return articleDao.addArticle(article);
    }

    @Override
    public int deleteArticleById(int id) {
        return articleDao.deleteArticleById(id);
    }

    @Override
    public int updateArticle(Article article) {
        return articleDao.updateArticle(article);
    }

    @Override
    public List<Article> searchByTitle(String s) {
        return articleDao.searchByTitle(s);
    }
}
