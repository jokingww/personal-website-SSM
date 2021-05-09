package com.wan.controller;

import com.wan.entity.Article;
import com.wan.entity.User;
import com.wan.service.IArticleService;
import com.wan.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class IndexController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IArticleService articleService;

    @RequestMapping(value = "/showIndex.do")
    public ModelAndView doShowIndex() {
        //获取用户和文章
        User user = userService.getUserByName("wan");
        List<Article> articleList = articleService.getArticleListWithLimit(5);
        //System.out.println(articleList);
        ModelAndView mv = new ModelAndView();
        mv.addObject("user", user);
        mv.addObject("articleList", articleList);
        mv.setViewName("index");
        return mv;
    }
}