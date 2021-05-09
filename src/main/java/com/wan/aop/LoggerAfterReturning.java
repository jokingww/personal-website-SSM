package com.wan.aop;

import org.springframework.aop.AfterReturningAdvice;

import java.lang.reflect.Method;
import java.util.logging.Logger;

public class LoggerAfterReturning implements AfterReturningAdvice {
    private static final Logger log = Logger.getLogger(String.valueOf(LoggerAfterReturning.class));

    @Override
    public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
        log.info("完成修改密码");
    }
}
