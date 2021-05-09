package com.wan.controller;

import com.wan.entity.Log;
import com.wan.service.ILogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class LogController {

    @Autowired
    private ILogService logService;

    @RequestMapping(value = "/showLog.do")
    public ModelAndView showIndex(HttpServletRequest request, HttpServletResponse response) {

        List<Log> logList = logService.getLogList();
        ModelAndView mv = new ModelAndView();
        mv.addObject("logList", logList);
        mv.setViewName("updatelog");
        return mv;
    }

    @RequestMapping(value = "/deleteLog.do")
    public void deleteLog() {

    }
}
