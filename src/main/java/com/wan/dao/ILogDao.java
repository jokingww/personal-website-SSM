package com.wan.dao;

import com.wan.entity.Log;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ILogDao {
    //获取更新日志
    List<Log> getLogList();

    //新增更新公告
    int addLog(Log log);
}
