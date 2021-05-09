package com.wan.service.impl;

import com.wan.dao.ILogDao;
import com.wan.entity.Log;
import com.wan.service.ILogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogServiceImpl implements ILogService {
    @Autowired(required = false)
    private ILogDao logDao;

    @Override
    public List<Log> getLogList() {
        return logDao.getLogList();
    }

    @Override
    public int addLog(Log log) {
        return logDao.addLog(log);
    }
}
