package com.wan.service;

import com.wan.entity.Log;

import java.util.List;

public interface ILogService {
    //获取所有
    List<Log> getLogList();

    //新增更新公告
    int addLog(Log log);
}
