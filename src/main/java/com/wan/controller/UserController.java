package com.wan.controller;

import com.wan.entity.User;
import com.wan.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/dologin.do")
    public ModelAndView doLogin(@RequestParam("username") String username, @RequestParam("password") String password,
                                HttpSession session) {
        ModelAndView mv = new ModelAndView();
        User user = userService.getUserByName(username);

        if (user == null) {
            mv.addObject("msg", "不存在此用户");
            mv.setViewName("login");
            return mv;
        } else if(!user.getPassword().equals(password)) {
            mv.addObject("msg", "密码错误");
            mv.setViewName("login");
            return mv;
        } else {
            mv.addObject("user", user);
            session.setAttribute("user", user);
            mv.setViewName("Admin/index");
            return mv;
        }
    }

    @RequestMapping(value = "/admin/updatePass.do")
    public ModelAndView updatePass(@RequestParam("password") String password, HttpSession session) {
        //修改密码
        User user = (User) session.getAttribute("user");
        user.setPassword(password);
        userService.updatePassword(user);

        ModelAndView mv = new ModelAndView();
        mv.addObject("msg", "success");
        mv.setViewName("forward:/admin/userMange.do");
        return mv;
    }
}