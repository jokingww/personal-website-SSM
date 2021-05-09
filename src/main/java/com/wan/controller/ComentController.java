package com.wan.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wan.entity.Article;
import com.wan.entity.Comment;
import com.wan.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class ComentController {
    @Autowired
    private ICommentService commentService;

    @RequestMapping("/comment.do")
    public ModelAndView doGetComment() {
        ModelAndView mv = new ModelAndView();
        List<Comment> commentList = commentService.getCommentAll();
        //分页
        //PageHelper.startPage(1, 5);
        //PageInfo<Comment> pageInfo = new PageInfo<Comment>(commentList);
        //System.out.println(pageInfo);

        mv.addObject("commentList", commentList);
        mv.setViewName("comment");
        return mv;
    }

    @RequestMapping("/addComment.do")
    public String addComment(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("sex") String sex,
        @RequestParam("content") String content) {

        //获取当前日期
        SimpleDateFormat sdf = new SimpleDateFormat();// 格式化时间
        sdf.applyPattern("yyyy-MM-dd");//
        Date date1 = new Date();// 获取当前时间
        String date = sdf.format(date1);

        if(name ==null || name.equals("")) {
            name = "匿名";
        }
        if ((sex != "man" && sex != "woman") && (sex != "男" && sex != "女")) {
            sex = "unknown";
        }
        Comment comment = new Comment(name, sex, content, date, email);

        //System.out.println(comment);
        commentService.addComment(comment);
        return "forward:/comment.do";
    }

    @RequestMapping("/searchComment.do")
    public ModelAndView searchComment(@RequestParam("s") String s) {
        ModelAndView mv = new ModelAndView();
        List<Comment> commentList = commentService.searchByNameOrContent(s);

        mv.addObject("commentList", commentList);
        mv.setViewName("comment");
        return mv;
    }

    @RequestMapping("/admin/deleteComment.do")
    public ModelAndView deleteComment(@RequestParam("id") int id) {
        ModelAndView mv = new ModelAndView();
        commentService.deleteCommentById(id);

        List<Comment> commentList = commentService.getCommentAll();
        mv.addObject("commentList", commentList);
        mv.addObject("msg", "success");
        mv.setViewName("Admin/comment");
        return mv;
    }

    @RequestMapping(value = "/admin/getComment.do")
    public ModelAndView searchByContent(@RequestParam("search-sort") int i, @RequestParam("keywords") String s) {
        ModelAndView mv = new ModelAndView();
        System.out.println(i);
        List<Comment> commentList = null;
        if (i == 11) {
            commentList = commentService.searchByName(s);
        } else if (i == 12) {
            commentList = commentService.searchByContent(s);
        } else {
            commentList = commentService.getCommentAll();
        }
        mv.addObject("commentList", commentList);
        mv.setViewName("Admin/comment");
        return mv;
    }
}
