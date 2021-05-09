package com.wan.dao;

import com.wan.entity.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface IArticleDao {

    //获得所有
    List<Article> getArticleList();

    //获得所有Article的前n个
    List<Article> getArticleListWithLimit(int n);

    //根据id查询
    Article getArticleById(int id);

    //根据内容查询
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
