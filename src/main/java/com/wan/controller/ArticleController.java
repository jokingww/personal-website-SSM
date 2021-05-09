package com.wan.controller;

import com.wan.entity.Article;
import com.wan.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
public class ArticleController {

    @Autowired
    private IArticleService articleService;

    @RequestMapping(value = "/showDetail.do")
    public ModelAndView showDetail(@RequestParam("id") String id) {

        ModelAndView mv = new ModelAndView();
        int aid = Integer.parseInt(id);
        //获取前后
        Article article = articleService.getArticleById(aid);
        Article preArticle = articleService.getPreArticle(article.getId());
        Article afterArticle = articleService.getAfterArticle(article.getId());

        if (preArticle != null){
            int preId = preArticle.getId();
            mv.addObject("preArticle", preArticle);
        } else {
            Article lastArticle = articleService.getLastArticle();
            mv.addObject("lastArticle", lastArticle);
        }
        if (afterArticle != null) {
            int afterId = afterArticle.getId();
            mv.addObject("afterArticle", afterArticle);
        } else {
            Article firstArticle = articleService.getFirstArticle();
            mv.addObject("firstArticle", firstArticle);
        }
        mv.addObject("article", article);
        mv.setViewName("detail");
        //System.out.println(article);
        return mv;
    }

    @RequestMapping(value = "/seachArticle.do")
    public ModelAndView searchArticle(@RequestParam("s") String s) {
        ModelAndView mv = new ModelAndView();
        //模糊查询
        List<Article> articleList = articleService.searchByContent(s);
        mv.addObject("articleList", articleList);
        String searchContent = s;
        mv.addObject("searchContent", searchContent);
        mv.setViewName("search");
        //System.out.println(articleList);
        return mv;
    }

    @RequestMapping(value = "/getArticle.do")
    public ModelAndView searchByContent(@RequestParam("search-sort") int i, @RequestParam("keywords") String s) {
        ModelAndView mv = new ModelAndView();
        //System.out.println(i);
        List<Article> articleList = null;
        if (i == 19) {
            articleList = articleService.searchByContent(s);
        } else if (i == 20) {
            articleList = articleService.searchByTitle(s);
        } else {
            articleList = articleService.getArticleList();
        }
        mv.addObject("articleList", articleList);
        mv.setViewName("Admin/article");
        //System.out.println(articleList);
        return mv;
    }

    @RequestMapping(value = "/admin/deleteArticle.do")
    public ModelAndView deleteById(@RequestParam("id") int id) {
        ModelAndView mv = new ModelAndView();
        articleService.deleteArticleById(id);

        List<Article> articleList = articleService.getArticleList();
        mv.addObject("articleList", articleList);
        mv.addObject("msg", "success");
        mv.setViewName("Admin/article");
        //System.out.println(articleList);
        return mv;
    }

    @RequestMapping(value = "/admin/addArticle.do")
    public ModelAndView addArticle(@RequestParam("title") String title, @RequestParam("content") String content,
                                   @RequestParam("subtitle") String subtitle, @RequestParam("content2") String content2) {
        ModelAndView mv = new ModelAndView();
        //获取当前日期
        SimpleDateFormat sdf = new SimpleDateFormat();// 格式化时间
        sdf.applyPattern("yyyy-MM-dd");//
        Date date1 = new Date();// 获取当前时间
        String date = sdf.format(date1);

        //添加文章
        Article article = new Article(title, content, subtitle, content2, date);
        articleService.addArticle(article);

        mv.setViewName("forward:/admin/articleMange.do");
        return mv;
    }

    @RequestMapping(value = "/admin/updateArticle.do")
    public ModelAndView updateById(@RequestParam("id") int id, @RequestParam("title") String title, @RequestParam("content") String content,
                                   @RequestParam("subtitle") String subtitle, @RequestParam("content2") String content2) {
        ModelAndView mv = new ModelAndView();
        Article article = new Article(id ,title, content, subtitle, content2);
        articleService.updateArticle(article);

        mv.setViewName("forward:/admin/articleMange.do");
        //System.out.println(articleList);
        return mv;
    }
}

