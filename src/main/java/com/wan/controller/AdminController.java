package com.wan.controller;

import com.wan.entity.Article;
import com.wan.entity.Comment;
import com.wan.entity.User;
import com.wan.service.IArticleService;
import com.wan.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private IArticleService articleService;

    @Autowired
    private ICommentService commentService;

    @RequestMapping("/tologin.do")
    public String toLogin(HttpSession session) {
        session.removeAttribute("user");
        return "login";
    }

    @RequestMapping("/toAdmin.do")
    public String toAdminIndex(HttpSession session) {
        return "Admin/index";
    }

    @RequestMapping("/articleMange.do")
    public ModelAndView articleMange() {
        ModelAndView mv = new ModelAndView();
        List<Article> articleList = articleService.getArticleList();

        mv.addObject("articleList", articleList);
        mv.setViewName("Admin/article");
        return mv;
    }

    @RequestMapping("/addArticleMange.do")
    public ModelAndView addArticleMange() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Admin/addArticle");
        return mv;
    }

    @RequestMapping("/updateArticleMange.do")
    public ModelAndView updateArticleMange(@RequestParam("id") int id) {
        ModelAndView mv = new ModelAndView();

        Article article = articleService.getArticleById(id);
        mv.addObject("article", article);
        mv.setViewName("Admin/updateArticle");
        return mv;
    }

    @RequestMapping("/commentMange.do")
    public ModelAndView commentMange() {
        ModelAndView mv = new ModelAndView();
        List<Comment> commentList = commentService.getCommentAll();

        mv.addObject("commentList", commentList);
        mv.setViewName("Admin/comment");
        return mv;
    }

    @RequestMapping("/userMange.do")
    public ModelAndView userMange() {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("Admin/updatePass");
        return mv;
    }
}
