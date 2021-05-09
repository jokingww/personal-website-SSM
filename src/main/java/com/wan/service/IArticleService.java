package com.wan.service;

import com.wan.entity.Article;

import java.util.List;

public interface IArticleService {

    //获得所有
    List<Article> getArticleList();

    //获取前n个
    List<Article> getArticleListWithLimit(int n);

    //根据id查询
    Article getArticleById(int id);

    List<Article> searchByContent(String s);

    //获取后一篇
    Article getAfterArticle(int id);

    //获取前一篇
    Article getPreArticle(int id);

    //获得第一篇
    Article getFirstArticle();

    //获得最后一篇
    Article getLastArticle();


    //添加文章
    int addArticle(Article article);

    //根据id删除
    int deleteArticleById(int id);

    //修改文章
    int updateArticle(Article article);

    //根据标题查询
    List<Article> searchByTitle(String s);
}
